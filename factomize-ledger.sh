#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

cd /opt/factomize-ledger
git pull

echo $DIR

#first delete the MFW app
python -m ledgerblue.deleteApp --targetId 0x31100003 --appName "MyFactomWallet"
python -m ledgerblue.deleteApp --targetId 0x31100003 --appName "Factom"

#then install the MFW app
#python -m ledgerblue.loadApp --appFlags 0x40 --path "44'/131'" --path "44'/132'"  --curve secp256k1 --curve ed25519 --tlv --targetId 0x31100003 --delete --fileName bin/app.hex --appName Factom --appVersion 1.1.2 --dataSize 0x00000040 --icon 0100000000ffffff00ffffffffffffffff3ff03ff03fff3fff0ff83fff3fff3fffffffffffffffffff

python -m ledgerblue.loadApp --appFlags 0x40 --path "44'/131'" --path "44'/132'" --curve secp256k1 --curve ed25519 --tlv --targetId 0x31100003 --delete --fileName bin/app.hex --appName Factom --appVersion 1.1.3 --dataSize 0x00000040 --icon 0100000000ffffff00ffffffffffffffff3ff03ff03fff3fff0ff83fff3fff3fffffffffffffffffff
#"python", "-m", "ledgerblue.loadApp", "--appFlags", "0x40", "--path", "\"44\'/131\'\"", "--path", "\"44\'/132\'\"",  "--curve", "ed25519", "--tlv", "--targetId", "0x31100003", "--delete", "--fileName", "/opt/ledger-toolchain/bin/app.hex", "--appName", "Factom", "--appVersion", "1.0.0", "--dataSize", "0x00000040", "--icon", "0100000000ffffff00ffffffffffff3fe03fe03fff3fff3fff0ff80ff83fff3fff3fff3fffffffffff"
