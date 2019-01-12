rem !/bin/sh

rem DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

rem echo $DIR

rem first delete the MFW app
rem python -m ledgerblue.deleteApp --targetId 0x31100003 --appName "Factom"

rem then install the MFW app

python -m ledgerblue.loadApp --appFlags 0x40 --path "44'/131'" --path "44'/132'" --path "44'/143165576'" --curve secp256k1 --tlv --targetId 0x31100003 --delete --fileName bin\app.hex --appName Factom --appVersion 1.1.5 --dataSize 0x00000040 --icon 0100000000ffffff00ffffffffffffffff3ff03ff03fff3fff0ff83fff3fff3fffffffffffffffffff
