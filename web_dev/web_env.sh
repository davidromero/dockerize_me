#!/bin/bash

echo 'Web Development environment'

echo 'Enter HostName: '
read hostname

echo 'Enter ip'
read ip

ssh "MacRomero"@"192.168.1.19" "bash -s" <./do_me.sh
