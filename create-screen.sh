#!/bin/bash

# 获取传入的参数
screen_name=$1

# 检查是否存在同名的 screen 会话
existing_screen=$(screen -ls | grep "$screen_name")

# 如果存在同名 screen 会话，则删除它
if [ -n "$existing_screen" ]; then
    screen -X -S "$screen_name" quit
fi

# 创建新的 screen 会话
screen -S "$screen_name"
