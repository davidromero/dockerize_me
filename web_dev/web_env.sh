#!/bin/bash

echo 'Web Development environment'

echo 'Enter HostName: '
read host_name

echo 'Enter ip'
read ip

ssh "$host_name"@"$ip" "bash -s" <./build_me.sh

echo "Open Browser and go to: " "$ip" ":8080"
