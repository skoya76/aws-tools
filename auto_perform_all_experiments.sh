#!/bin/bash

echo "StartTime -----> `date`"
./start_instances_on_all_regions.sh
./perform_throughput_experiments.sh >> throughput.log&
./perform_rtt_experiments.sh >> rtt.log&
./stop_instances_on_all_regions.sh
echo "EndTime -----> `date`"