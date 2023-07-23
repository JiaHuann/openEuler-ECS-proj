#include "vmlinux.h"
#include <bpf/bpf_helpers.h>
#include <bpf/bpf_tracing.h>
#include <bpf/bpf_core_read.h>
char LICENSE[] SEC("license") = "Dual BSD/GPL";
//name: sched_wakeup
//ID: 264
//format:
//        field:unsigned short common_type;       offset:0;       size:2; signed:0;
//        field:unsigned char common_flags;       offset:2;       size:1; signed:0;
//        field:unsigned char common_preempt_count;       offset:3;       size:1; signed:0;
//        field:int common_pid;   offset:4;       size:4; signed:1;
//
//        field:char comm[16];    offset:8;       size:16;        signed:0;
//        field:pid_t pid;        offset:24;      size:4; signed:1;
//        field:int prio; offset:28;      size:4; signed:1;
//        field:int target_cpu;   offset:32;      size:4; signed:1;
#define AUTO_CREATE_KERNEL_CODE
#include "auto_gen_trace.h"
LIBBPF_AUTOEVENT(sched,sched_wakeup,
                AUTO_FORMAT(
                        __auto_field(unsigned short, common_type)
                        __auto_field(unsigned char,common_flags)
                        __auto_field(unsigned char,common_preempt_count)
                        __auto_field(int,common_pid)
                      ));
