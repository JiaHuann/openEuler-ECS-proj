
# 自动化生成脚本文档

# 变量命名规范

我们根据ebpf编程范式将ebpf程序自动生成分为内核态和用户态程序。
然后将程序根据步骤划分为每一个部分
头文件声明，MAP声明，挂载点声明，hooks函数声明，用户逻辑声明等。
ps:用户态内核态共享一些变量。

`BPF_KERNEL/USER_具体的功能`
>如：`BPF_KERNEL_FILE`  为内核态ebpf程序的所有内容
>`BPF_USER_HEADER` 为用户态ebpf程序的头文件

# 内核态
```shell
  BPF_KERNEL_FILE
  BPF_KERNEL_FORMAT_STRUCTURE
  BPF_KERNEL_STRUCT_MEMBER 
  BPF_KERNEL_PROG_CONTENT
  BPF_KERNEL_DEFINE_PROG
  BPF_KERNEL_DEFINE_MAP
  BPF_KERNEL_MAP_KEY         
  BPF_KERNEL_MAP_VALUE
  BPF_KERNEL_MAP_VALUE_TYPE
  BPF_KERNEL_MAP_NAME
```

# 用户态
```shell
  BPF_USER_FILE
  BPF_USER_HEADER
  BPF_USER_COMMON
  BPF_USER_MAIN
```

