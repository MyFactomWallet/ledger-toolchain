#!/bin/sh

if [ ! -f /lib/x86_64-linux-gnu/libudev.so ]; then
  apt-get install libudev-dev
fi
wget -q -O - https://www.ledgerwallet.com/support/add_udev_rules.sh | sudo bash
