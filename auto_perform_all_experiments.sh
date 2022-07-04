#!/bin/bash

echo "StartTime -----> `date`"
./perform_throughput_experiments.sh >> throughput.log &
./perform_rtt_experiments.sh >> rtt.log &
echo "EndTime -----> `date`"