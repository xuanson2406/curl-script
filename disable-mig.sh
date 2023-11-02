#!/bin/bash
nvidia-smi -i 0 -mig 0
nvidia-smi --gpu-reset
sleep 20 
echo "Will be reboot VM to disable mig config"
reboot
