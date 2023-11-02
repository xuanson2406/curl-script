#!/bin/bash
nvidia-smi --gpu-reset
sleep 20 
echo "Will be reboot VM"
reboot
