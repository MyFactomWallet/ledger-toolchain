#!/bin/sh

#setup pip if needed 
LEDGERBLUE_PY=`pip list  --format=columns |grep ledgerblue`
if [ -z "$LEDGERBLUE_PY" ]; then
  pip install -Iv ledgerblue==0.1.19
fi

echo Follow the instructions on the ledger Nano S scrren.

#sideload the factom ledger app.
python -m ledgerblue.loadApp --appFlags 0x240 --path "44'/131'" --path "44'/132'" --path "44'/281'" --curve secp256k1 --tlv --targetId 0x31100004 --delete --fileName bin/app.hex --appName Factom --appVersion 1.3.1 --dataSize 0x00000040 --icon 0100000000ffffff00ffffffffffffffff3ff03ff03fff3fff0ff83fff3fff3fffffffffffffffffff

