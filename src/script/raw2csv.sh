#!/bin/bash
# if [ "$#" -ne 1 ]; then
#     echo "Usage: $0 <filename>"
#     exit 1
# fi

filename="$1"
status_lable="$2"
keys=("prev_comm" "prev_pid" "prev_prio" "prev_state" "next_comm" "next_pid" "next_prio" "comm" "pid" "runtime" "vruntime" "prio" "target_cpu" "page" "pfn" "order" "migratetype" "gfp_flags" "sector" "size")
variable_list=()
line_number=1
block_rq_complete_key=("dev-main_sec" "rw-type" "rq-cmd" "rq-start-sec" "rq-sec-num" "rq-status")
block_rq_issue_key=("rq-bytes" "rq-process")
ext4_key=("fs-waittime,dirty-inode, inode-dirty-caller")

while IFS= read -r line; do
    # 根据空格拆分每一行的内容分成 part 放在 line_parts 数组中
    IFS=' ' read -r -a line_parts <<< "$line"
    # 第一行打印标签
    if [ "$line_number" -eq 1 ]; then
        labels=""
        for key in "${keys[@]}"; do
            labels+=" $key,"
        done

        for key in "${block_rq_complete_key[@]}"; do
            block_rq_complete_lable+=" $key,"
        done

        for key in "${block_rq_issue_key[@]}"; do
            block_rq_issue_lable+=" $key,"
        done

        for key in "${ext4_key[@]}"; do
            ext4_lable+=" $key,"
        done

        # 前五列固定，直接打印
        echo "status, ProcessName, CPU,Flags, Timestamp, Tracepoint,$labels""$block_rq_complete_lable""$block_rq_issue_lable""$ext4_lable"
    else
        tracepoint="${line_parts[4]}"
        # 去掉 tracepoint 被划分 part 时带的冒号
        tracepoint="${tracepoint%%:*}"
        
        # 否则进行匹配
        row=""
        row+="$status_lable, ${line_parts[0]}, ${line_parts[1]}, ${line_parts[2]}, ${line_parts[3]%%:*}, ${line_parts[4]%%:*},"
        #echo $row
        for key in "${keys[@]}"; do
            # 预留 x，匹配到键值对存在则更改 value
            value="x"
            # 只从第五列去找匹配
            for part in "${line_parts[@]:5}"; do
                if [[ $part == "$key="* ]]; then
                    value="${part#*=}"
                    break
                fi
            done
            row+=" $value,"
        done
        #标准键值对匹配部分结束
        if [[ "$tracepoint" == "block_rq_issue" || "$tracepoint" == "block_rq_complete" || "$tracepoint" == "block_touch_buffer" ]]; then
        # block_rq_complete_key=("dev-main/sec" "rw-type" "rq-cmd" "rq-start-sec" "rq-sec-num" "rq-status")
        # block_rq_issue_key=("rq-bytes" "rq-process")
            if [[ "$tracepoint" == "block_rq_complete" ]]; then
                #echo "${line_parts[11]}"  # 通过echo看拆出来的部分是啥，如果是一些符号和无关内容则不要
                row+=" $(echo " ${line_parts[5]}" | sed 's/,/./g'),"
                row+=" ${line_parts[6]},"
                row+=" ${line_parts[7]},"
                row+=" ${line_parts[8]},"
                row+=" ${line_parts[10]},"
                row+=" ${line_parts[11]},"
                row+=" x, x"
                row+=" x, x, x"
            fi
            if [[ "$tracepoint" == "block_rq_issue" ]]; then
                row+=" $(echo " ${line_parts[5]}" | sed 's/,/./g'),"
                row+=" ${line_parts[6]},"
                row+=" ${line_parts[8]},"
                row+=" ${line_parts[9]},"
                row+=" ${line_parts[11]},"
                row+=" x,"
                row+=" ${line_parts[7]},"
                row+=" ${line_parts[12]},"
                row+=" x, x, x"
            fi
            if [[ "$tracepoint" == "block_touch_buffer" ]]; then
                # for index in "${!line_parts[@]}"; do
                #     echo "Element at index $index: ${line_parts[index]}"
                # done
                row+=" $(echo " ${line_parts[5]}" | sed 's/,/./g'),"
                row+=" x,"
                row+=" x,"
                row+=" ${line_parts[6]#*=},"
                row+=" x,"
                row+=" x,"
                row+=" ${line_parts[7]#*=},"
                row+=" ${line_parts[0]},"
                row+=" x, x, x"
            fi
        elif [[ "$tracepoint" == "ext4_sync_fs" || "$tracepoint" == "ext4_mark_inode_dirty" ]]; then
            # for index in "${!line_parts[@]}"; do
            #         echo "Element at index $index: ${line_parts[index]}"
            # done
            if [[ "$tracepoint" == "ext4_sync_fs" ]]; then
                row+=" $(echo " ${line_parts[6]}" | sed 's/,/./g'), x, x, x, x, x, x, x,"  # 通过echo看拆出来的部分是啥，如果是一些符号和无关内容则不要
                row+=" ${line_parts[8]}, x, x"
            fi
            if [[ "$tracepoint" == "ext4_mark_inode_dirty" ]]; then
                row+=" $(echo " ${line_parts[6]}" | sed 's/,/./g'), x, x, x, x, x, x, x,"
                row+=" x, ${line_parts[8]}, ${line_parts[10]}"
            fi
        else
            row+="x, x, x, x, x, x, x, x, x, x, x"

        fi




        row="${row%,}"
        echo "$row"
        
    fi
    ((line_number++))
done < "$filename"
