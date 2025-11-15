#!/bin/bash

# Create an MCLAG on device 1
sudo sonic-cli configure mclag add 1
sudo sonic-cli configure mclag domain-id 1
sudo sonic-cli configure mclag peer-ip 10.10.10.2
sudo sonic-cli configure mclag peer-link 1

# Create an MCLAG on device 2
ssh 10.10.10.2 'sudo sonic-cli configure mclag add 1'
ssh 10.10.10.2 'sudo sonic-cli configure mclag domain-id 1'
ssh 10.10.10.2 'sudo sonic-cli configure mclag peer-ip 10.10.10.1'
ssh 10.10.10.2 'sudo sonic-cli configure mclag peer-link 1'
