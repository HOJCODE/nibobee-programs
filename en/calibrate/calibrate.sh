#!/bin/bash

# Define necessary variables
HFUSE=0xd1
LFUSE=0xef
PROGRAMMER=usbasp
TARGET=calibration

# Inform the user, wait 3 seconds and flash the calibration program
printf '\E[31m'"\033[1mFlashing calibration program in 3 seconds\n\033[0m"
sleep 3
sudo avrdude -c $PROGRAMMER -p m16 -B 10 -U lfuse:w:$LFUSE:m -U hfuse:w:$HFUSE:m
sudo avrdude -c $PROGRAMMER -p m16 -B 2 -U flash:w:$TARGET.hex
