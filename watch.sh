#!/bin/bash

# 启动应用
python main.py &

# 监控文件变化
while inotifywait -e modify -r .; do
  # 杀掉之前运行的应用
  pkill -f "python main.py"
  # 重新运行应用
  python main.py &
done