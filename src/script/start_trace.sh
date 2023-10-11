#!/bin/bash

# 检查debugfs文件系统是否已加载，如果没有，请先加载它
sudo mount -t debugfs none /sys/kernel/debug

Path2Events="/sys/kernel/debug/tracing/events/"

# 启用事件
sudo sh -c "echo 1 > ${Path2Events}sched/sched_switch/enable"
sudo sh -c "echo 1 > ${Path2Events}sched/sched_stat_runtime/enable"
sudo sh -c "echo 1 > ${Path2Events}sched/sched_wakeup/enable"
sudo sh -c "echo 1 > ${Path2Events}kmem/mm_page_alloc/enable"
sudo sh -c "echo 1 > ${Path2Events}kmem/mm_page_free_batched/enable"
sudo sh -c "echo 1 > ${Path2Events}ext4/ext4_sync_fs/enable"
sudo sh -c "echo 1 > ${Path2Events}ext4/ext4_mark_inode_dirty/enable"
sudo sh -c "echo 1 > ${Path2Events}oom/compact_retry/enable"
sudo sh -c "echo 1 > ${Path2Events}oom/reclaim_retry_zone/enable"
sudo sh -c "echo 1 > ${Path2Events}oom/oom_score_adj_update/enable"

# 读取trace_pipe
sudo cat /sys/kernel/debug/tracing/trace_pipe
