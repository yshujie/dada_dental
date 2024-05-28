#!/bin/bash

python main.py &

while inotifywait -e modify -r .; do
  pkill -f "python main.py"
  python main.py &
done