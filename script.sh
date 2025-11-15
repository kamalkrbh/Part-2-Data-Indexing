#!/bin/bash

# Create a portchannel on SONiC
sudo sonic-cli configure portchannel add 1
sudo sonic-cli configure portchannel member add 1 Ethernet0

# Create an MCLAG
sudo sonic-cli configure mclag add 1
sudo sonic-cli configure mclag domain-id 1
sudo sonic-cli configure mclag peer-ip 10.10.131.111
sudo sonic-cli configure mclag peer-link 1

# Run the commands on 10.10.131.111
ssh 10.10.131.111 'bash -s' < ./script.sh
