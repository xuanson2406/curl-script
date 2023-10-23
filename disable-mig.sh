#!/bin/bash
nvidia-smi -i 0 -mig 0
nvidia-smi --gpu-reset
sleep 10 
echo "Will be reboot VM to disable mig config"
reboot