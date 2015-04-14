#!/bin/bash
add-apt-repository ppa:nilarimogard/webupd8 &&
apt-get update &&
apt-get install bbswitch-dkms &&
apt-get install nvidia-331 nvidia-settings nvidia-prime &&
apt-get install prime-indicator &&
reboot

