#!/bin/sh

if [ ! -f /usr/bin/git ]; then
  sudo apt install git
fi

if [ ! -f /usr/include/libusb-1.0/libusb.h ]; then
  sudo apt-get install libusb-1.0-0-dev
fi
if [ ! -d nanos-secure-sdk ]; then
  git clone https://github.com/LedgerHQ/nanos-secure-sdk
fi

if [ ! -d blue-secure-sdk ]; then
  git clone https://github.com/LedgerHQ/blue-secure-sdk
fi

if [ -d blue-app-factom ]; then
  echo Getting latest blue-app-factom
  cd blue-secure-sdk; git pull; cd -
else
  Cloning blue-app-factom
  git clone https://github.com/MyFactomWallet/blue-app-factom.git
fi

if [ ! -f /etc/udev/rules.d/20-hw1.rules ]; then
  sudo ./setup-udev.sh
fi

if [ ! -f /usr/bin/pip ]; then
  sudo apt install python-pip
fi
#SECP_BUNDLED_EXPERIMENTAL=1 pip --no-cache-dir --no-binary secp256k1 install secp256k1

LEDGERBLUE_PY=`pip list  --format=columns |grep ledgerblue`
if [ -z "$LEDGERBLUE_PY" ]; then
  pip install -Iv ledgerblue==0.1.15
fi

