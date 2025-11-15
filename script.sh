#!/bin/bash

# Create a portchannel on SONiC
sudo sonic-cli configure portchannel add 1
sudo sonic-cli configure portchannel member add 1 Ethernet0
sudo sonic-cli configure portchannel member add 1 Ethernet1

# Run the commands on 10.10.131.111
ssh 10.10.131.111 'bash -s' < ./script.sh
