#!/bin/sh

#first delete the MFW app
python -m ledgerblue.deleteApp --targetId 0x31100002 --appName MyFactomWallet

#then install the MFW app
python -m ledgerblue.loadApp --appFlags 0x40 --path 44'/131' --path 44'/132' --curve ed25519 --targetId 0x31100002 --fileName bin/app.hex --appName MyFactomWallet --icon 0100000000ffffff0000000000c003e007f00ff81ffc3f7e7e3ffc1ff88ff186630007000e00040000
