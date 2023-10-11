#!/bin/bash

# 指定输出文件的文件名
output_filename="Demo.csv"

# 检查是否提供了足够的输入文件
if [ "$#" -lt 2 ]; then
  echo "至少提供两个输入文件才能合并它们。"
  exit 1
fi

# 创建一个空的输出文件
> "$output_filename"

# 遍历所有输入文件，并追加到输出文件中
for input_filename in "$@"; do
  if [ -f "$input_filename" ]; then
    cat "$input_filename" >> "$output_filename"
    echo "已合并文件 $input_filename 到 $output_filename"
  else
    echo "警告：文件 $input_filename 不存在，将跳过该文件。"
  fi
done

echo "合并完成，结果保存在 $output_filename 中。"
