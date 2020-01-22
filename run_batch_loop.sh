#!/bin/bash

while true; do
    SLEEP_TIME=1
    
   ./run_batch.sh 
    echo "sleeping $SLEEP_TIME"
    sleep $SLEEP_TIME
done
