#!/bin/bash

while true; do
    SLEEP_TIME=0.5
    INPUT_FRAME=`shuf -n 1 input.txt`
    echo "running inference on $INPUT_FRAME"
    
    ./darknet detector test cfg/coco.data cfg/yolov3-tiny.cfg  yolov3-tiny.weights $INPUT_FRAME -dont_show
    
    echo "sleeping $SLEEP_TIME"
    sleep $SLEEP_TIME
done
