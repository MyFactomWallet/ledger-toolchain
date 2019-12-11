rem !/bin/sh

rem DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

rem echo $DIR

rem first delete the MFW app
rem python -m ledgerblue.deleteApp --targetId 0x31100003 --appName "Factom"

rem then install the MFW app

python -m ledgerblue.loadApp --appFlags 0x240 --path "44'/131'" --path "44'/132'" --path "44'/281'" --curve secp256k1 --tlv --targetId 0x31100004 --delete --fileName bin/app.1.6.0.hex --appName Factom --appVersion 1.3.1 --dataSize 0x00000040 --icon 0100000000ffffff00ffffffffffffffff3ff03ff03fff3fff0ff83fff3fff3fffffffffffffffffff

