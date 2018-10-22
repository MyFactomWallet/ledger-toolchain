#FROM zondax/ledger-docker-bolos
FROM ubuntu:18.04
FROM python:3 

RUN apt install git
#RUN apt-get install libusb-1.0-0-dev
#RUN apt-get install libusb
RUN apt-get update -q
RUN apt-get install --no-install-recommends -y libusb-1.0-0-dev libudev-dev
#git clone https://github.com/LedgerHQ/nanos-secure-sdk
#git clone https://github.com/LedgerHQ/blue-secure-sdk

#if [ ! -f /etc/udev/rules.d/20-hw1.rules ]; then
#  sudo ./setup-udev.sh
#fi


#ENV BOLOS_ENV=/opt/bolos

# ENV BOLOS_SDK=$BOLOS_ENV/nanos-secure-sdk

#ENV BOLOS_SDK=$BOLOS_ENV/blue-secure-sdk



# RUN git clone https://github.com/LedgerHQ/nanos-secure-sdk.git $BOLOS_SDK

#RUN git clone https://github.com/ledgerhq/blue-secure-sdk $BOLOS_SDK

RUN git clone https://github.com/MyFactomWallet/ledger-toolchain.git /opt/ledger-toolchain
#RUN apt-get update && apt-get install -y \
#	python-pip

RUN pip install -Iv ledgerblue==0.1.19

CMD ["python", "-m", "ledgerblue.deleteApp", "--targetId", "0x31100003", "--appName", "MyFactomWallet"]

CMD ["python", "-m", "ledgerblue.loadApp", "--appFlags", "0x40", "--path", "\"44\'/131\'\"", "--path", "\"44\'/132\'\"", "--curve", "secp256k1", "--curve", "ed25519", "--tlv", "--targetId", "0x31100003", "--delete", "--fileName", "/opt/ledger-toolchain/bin/app.hex", "--appName", "Factom", "--appVersion", "1.1.2", "--dataSize", "0x00000040", "--icon", "0100000000ffffff00ffffffffffffffff3ff03ff03fff3fff0ff83fff3fff3fffffffffffffffffff"]





#USER test
