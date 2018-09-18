#!/bin/sh

#first delete the MFW app
python -m ledgerblue.deleteApp --targetId 0x31100002 --appName "MyFactomWallet"

#then install the MFW app
python -m ledgerblue.loadApp --appFlags 0x40 --path 44/131 --path 44/132 --curve secp256k1 --curve ed25519 --tlv --targetId 0x31100003 --delete --fileName bin/app.hex --appName MyFactomWallet --appVersion 1.0.0 --dataSize 0x00000040 --icon 0100000000ffffff00000000008001c003e007f00ff81f7c3e3e7c9e798c3300070006000400000000

