#!/bin/bash
distro=$(cat /etc/os-release)

echo "Your Linux distro is: 
$distro"

public_ip=$(curl ifconfig.me.)

echo "Your public IP address is $public_ip"

internal_ip=$(ifconfig | grep broadcast | awk '{print $2}')

echo "Your internal IP address is $internal_ip"

default_gate=$(ip route | grep default | awk '{print $3}')

echo "Your default gateway is $default_gate"

disk_info_size=$(df -H | grep dev/sda | awk '{print $2}')


echo "This is your disk size allocation in GB: $disk_info_size"


disk_info_size_free=$(df -H | grep dev/sda | awk '{print $4}')
echo "This is your disk size allocation in GB: $disk_info_size_free"


disk_info_size_used=$(df -H | grep dev/sda | awk '{print $3}')
echo "This is your disk size allocation in GB: $disk_info_size_used"


echo "These are top five directories that consume space on the hard disk $top_five:"
sudo du -a /var | sort -n -r | head -n 5

echo "the following displays CPU usage, which will refresh every 10 seconds" 


sar -u 10 100