#!/bin/bash
cpuTemp0=$(cat /sys/class/thermal/thermal_zone0/temp)
cpuTemp1=$(($cpuTemp0/1000))
cpuTemp2=$(($cpuTemp0/100))
cpuTempM=$(($cpuTemp2 % $cpuTemp1))
CPU=$cpuTemp1"."$cpuTempM

curl -i -XPOST 'http://localhost:8086/write?db=tempdb' --data-binary 'temperature CPU='$CPU
