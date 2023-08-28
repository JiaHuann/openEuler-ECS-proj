#!/system/bin/sh
# For eBPF programs only based on AOSP platform
# diff with normal eBPF programs:using AOSP "bpfloader" to enable kernel program.

SELECT_SUBSYS=""
TRACEPOINT=()
index=0

show_usage() {
  echo "Usage:  [options]"
  echo "Options:"
  echo " -h, --help  帮助"
  echo " -p 子系统下具体的tracepoint"
  echo " -s 要监控的子系统"
  echo " -v 对应要放入map的结构体成员字段名.(exp:sched_switch的next_pid)"
  echo " -t 对应要放入map的结构体字段的类型名,(exp:sched_switch中next_pid对应的pid_t)"
  echo " -f 输出的文件名(不含后缀)"./auto_Andriod_kernel.sh -s sched -p sched_swtich -t pid_t -v next_pid -f test
}

#---------------------解析命令行参数-----------------#
while getopts ":s:p:t:v:h:f:" opt; do
  case $opt in
    s)       #subsystem
      SELECT_SUBSYS="$OPTARG"
      ;;
    p)      #sybsys下具体的tracepoint
      TRACEPOINT[$index]="$OPTARG"
      ;;
    t)       #MAP的type(exp:pid_t)
      map_type="$OPTARG"
      ;;
    v)       #MAP的value 如(exp:next_pid)
      map_value="$OPTARG"
      ;;
    h)
      show_usage
      exit 0
      ;;
    f)
      FILE_NAME="$OPTARG"
      ;;
    \?)
      echo "无效的选项: -$OPTARG" >&2
      show_usage
      exit 1
      ;;
    :)
    if [ "$OPTARG" = "h" ]; then
          show_usage
          exit 0
      else
        echo "选项 -$OPTARG 需要参数." >&2
        show_usage
        exit 1
      fi
      ;;
  esac
done

echo "参数b: ${TRACEPOINT[$index]}"
#安装依赖
# 定义目录变量
TP_SUBSYS_DIR="/sys/kernel/debug/tracing/events"

#-------------------选定子系统------------------------#

output_subsys_dir=$(ls "$TP_SUBSYS_DIR")

if [ -z "$SELECT_SUBSYS" ]; then
  echo "目录列表：$output_subsys_dir"
  echo -n "请输入监控的子系统: "
  read -r SELECT_SUBSYS
fi

#选择tracepoint
TP_DIR="${TP_SUBSYS_DIR}/${SELECT_SUBSYS}"
echo ${TP_DIR}

if [ -z "${TRACEPOINT[$index]}" ]; then
  output_tp_dir=$(ls "$TP_DIR")
  echo "tracepoint列表:$output_tp_dir ${TRACEPOINT[$index]}"

  echo -n "请输入要监控的tp: "
  read -r TRACEPOINT[$index]
  ((index++))
else
  ((index++))
fi

#-----------------------------------生成内核态程序主逻辑---------------------------------------------#
#生成内核态文件
BPF_KERNEL_FILE_HEADER="#include <linux/bpf.h>
#include <stdbool.h>
#include <stdint.h>
#include <bpf_helpers.h>\n"


#对每一个选中的tracepoint生成内核态ebpf程序
for path in "${TP_SUBSYS_DIR}/${SELECT_SUBSYS}/${TRACEPOINT[@]}"; do
  #0.定义局部变量
  TP_FULLY_DIR="$path"
  BPF_KERNEL_FILE=""
  BPF_KERNEL_FILE+="$BPF_KERNEL_FILE_HEADER"
  BPF_KERNEL_FORMAT_STRUCTURE=""
  BPF_KERNEL_STRUCT_MEMBER=""  
  BPF_KERNEL_PROG_CONTENT=""
  BPF_KERNEL_DEFINE_PROG=""
  BPF_KERNEL_DEFINE_MAP=""
  BPF_KERNEL_MAP_KEY="cpu"          
  BPF_KERNEL_MAP_VALUE=$map_value
  BPF_KERNEL_MAP_VALUE_TYPE=$map_type
  BPF_KERNEL_MAP_NAME=""
  
  echo "$TP_FULLY_DIR/format"


  #--------------------1.获取原始format数据-------------------#
  RAW_STRUCTURE=$(cat "$TP_FULLY_DIR/format")
  echo "----------获取原始format数据----------"
  echo "$RAW_STRUCTURE"
  
  
  #--------------------2.处理原始format数据-------------------#
  BPF_KERNEL_STRUCT_MEMBER+="\tunsigned long long ignore;\n" #对齐
  start_append=false
  while IFS= read -r line; do
    if [[ $start_append == true ]]; then
      # 匹配处理
      if [[ $line == *field:* ]]; then
        extracted=$(awk -F 'field:|;' '{print $2}' <<< "$line")
        # 格式化拼接
        BPF_KERNEL_STRUCT_MEMBER+="\t$extracted;\n"
        #echo "$extracted"
      fi
    fi

    # 判断是否读到空行
    if [[ -z "$line" ]]; then
      # 开始拼接内容
      start_append=true
    fi
  done <<< "$RAW_STRUCTURE"
  echo -e "--------获取并处理完毕全部成员----------\n" 
  echo -e $BPF_KERNEL_STRUCT_MEMBER


  #--------------------3.拼接为C语言结构体形式-------------#
  BPF_KERNEL_FORMAT_STRUCTURE="
struct ${TRACEPOINT[@]}{
$BPF_KERNEL_STRUCT_MEMBER
};\n"
  BPF_KERNEL_FILE+=$BPF_KERNEL_FORMAT_STRUCTURE


  #----------------------4.声明map--------------------#
    #4.1声明key
      #目前先写死了，后续扩展
    #4.2value
  if [ -z "$BPF_KERNEL_MAP_VALUE_TYPE" ] && [ -z "$BPF_KERNEL_MAP_VALUE" ]; then
    #echo -e "${BPF_KERNEL_STRUCT_MEMBER}"

    echo -n "选择MAP的key的类型(示例:pid_t): "
    read -r BPF_KERNEL_MAP_VALUE_TYPE
    echo -n "选择MAP作为key的字段名(示例:next_pid): "
    read -r BPF_KERNEL_MAP_VALUE

    BPF_KERNEL_MAP_NAME="${BPF_KERNEL_MAP_KEY}_${BPF_KERNEL_MAP_VALUE}_map"
  else
    BPF_KERNEL_MAP_NAME="${BPF_KERNEL_MAP_KEY}_${BPF_KERNEL_MAP_VALUE}_map"
  fi

  BPF_KERNEL_DEFINE_MAP+="DEFINE_BPF_MAP(${BPF_KERNEL_MAP_NAME}, ARRAY, int, ${BPF_KERNEL_MAP_VALUE_TYPE}, 1024);\n"
  BPF_KERNEL_FILE+=$BPF_KERNEL_DEFINE_MAP
  #--------------------------5.声明prog--------------------#
    #5.1声明key value
  BPF_KERNEL_PROG_CONTENT+="\tint key;\n\t${BPF_KERNEL_MAP_VALUE_TYPE} val;\n"
    #5.2获取key value
  BPF_KERNEL_PROG_CONTENT+="\tkey = bpf_get_smp_processor_id();\n\tval = args->${BPF_KERNEL_MAP_VALUE};\n"
    #5.3更新map逻辑
  BPF_KERNEL_PROG_CONTENT+="\tbpf_${BPF_KERNEL_MAP_NAME}_update_elem(&key, &val, BPF_ANY);"
  BPF_KERNEL_DEFINE_PROG+="DEFINE_BPF_PROG(\"tracepoint/${SELECT_SUBSYS}/${TRACEPOINT[@]}\", AID_ROOT, AID_NET_ADMIN, tp_${TRACEPOINT[@]}) (struct ${TRACEPOINT[@]}* args) {
${BPF_KERNEL_PROG_CONTENT}
\treturn 0;
};\n"

  BPF_KERNEL_FILE+=$BPF_KERNEL_DEFINE_PROG

  #-----------------------6.LICENSE--------------------------#
  BPF_KERNEL_FILE+="LICENSE(\"Apache 2.0\");"
  #-----------------------7.打印为完整内核ebpf程序------------#
  echo "--------------内核态程序完整程序生成-----------"
  if [ -z $FILE_NAME ];then
    echo -n "输出文件名(不含后缀):"
    read -r FILE_NAME
  fi
  echo -e "$BPF_KERNEL_FILE" > "$FILE_NAME.c"



  #-------------------------------------User file generate--------------------------------#

  # 1.声明结构变量
  BPF_USER_FILE=""
  BPF_USER_HEADER="#include <android-base/macros.h>
  #include <stdlib.h>
  #include <unistd.h>
  #include <iostream>
  #include <bpf/BpfMap.h>
  #include <bpf/BpfUtils.h>
  #include <libbpf_android.h>
  #include \"libbpf.h\"\n"

  BPF_USER_MAP_PREFIX="map_${FILE_NAME}"
  BPF_USER_MAP_SUFFIX="${BPF_KERNEL_MAP_NAME}"
  BPF_USER_PROG_PREFIX="prog_${FILE_NAME}"
  BPF_USER_PROG_SUFFIX="${SELECT_SUBSYS}_${TRACEPOINT[@]}"

  BPF_USER_FILE+=$BPF_USER_HEADER
  BPF_USER_FILE+=$BPF_KERNEL_FORMAT_STRUCTURE

  # 2.定义用户态main函数主逻辑

          #2.1 初始化，打开prog的fd并attach tracepoint
  BPF_USER_TP_MAP_PATH="\tconstexpr const char tp_prog_path[] = \"/sys/fs/bpf/${BPF_USER_PROG_PREFIX}_tracepoint_${BPF_USER_PROG_SUFFIX}\";
\tconstexpr const char map_path[] = \"/sys/fs/bpf/${BPF_USER_MAP_PREFIX}_${BPF_USER_MAP_SUFFIX}\";\n"

  BPF_USER_ATTACH="\tint mProgFd = bpf_obj_get(tp_prog_path);\n
\tbpf_attach_tracepoint(mProgFd, \"${SELECT_SUBSYS}\", \"${TRACEPOINT[@]}\");\n
\tsleep(1);\n"

  BPF_USER_FILE+="int main(){\n"
  BPF_USER_FILE+=$BPF_USER_TP_MAP_PATH
  BPF_USER_FILE+=$BPF_USER_ATTACH

  echo -e $BPF_USER_TP_MAP_PATH
  
          #2.2 打开并创建map实例，实现用户态逻辑（目前是简单输出）
  BPF_USER_MAP_INSTANCE="\tandroid::bpf::BpfMap<int ,${BPF_KERNEL_MAP_VALUE_TYPE}> myMap0(map_path);\n"
  BPF_USER_LOGIC="\twhile(1){
\t\tusleep(40000);
\t\tprintf(\"Last Job on cpu 0 has waited %llu\", *myMap0.readValue(0));
}
\texit(0);
}"
  BPF_USER_FILE+=$BPF_USER_MAP_INSTANCE
  BPF_USER_FILE+=$BPF_USER_LOGIC

          #2.3输出用户态逻辑
  echo -e "$BPF_USER_FILE" > "$FILE_NAME.cpp"

done

#-----------------测试---------------#
echo "---------------测试--------------------"
for element in "${TRACEPOINT[@]}"; do
  echo "$element"
done



