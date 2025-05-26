#!/bin/bash

## Install attack system

IP=$(hostname -I | awk '{print $2}')

echo "START - Attack configuration - "$IP
echo "=> [1]: Installing required packages..."
  DEBIAN_FRONTEND=noninteractive
  apt-get update  -o Dpkg::Progress-Fancy="0" -q -y >> /tmp/install_web.log 2>&1
  apt-get -y -q -o Dpkg::Progress-Fancy="0" install \
    nmap \
    wfuzz \
    hydra \
    bettercap \
      >> /tmp/install_web.log 2>&1
  ln -s /vagrant/demo /root/demo 
