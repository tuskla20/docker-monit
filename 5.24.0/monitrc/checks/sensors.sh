#!/bin/bash

CPU0=$(sensors -u | grep "temp2_input" | awk '{printf "%d",$2}')
exit $CPU0
