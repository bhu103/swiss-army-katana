#!/usr/bin/zsh
while true; do
    monitor-sensor --accel >> /home/bhu2/dev/bin/rotation.txt
    sleep 1
done

