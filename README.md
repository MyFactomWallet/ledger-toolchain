# ledger-toolchain

## Downloading the scripts

The scripts contained here will setup your ledger app build or install environment.


The testing and building of the app has been tested using Ubuntu 17.04.  Permission for the Ledger USB device needs to first be granted by Linux.  Both the setup-buildenv.sh and setup.installenv.sh scripts will execute the setup-udev.sh script.

Please note, the setup-udev.sh script needs to configure the udev rules in /etc which requires elevated privledges.  Because of this the setup-buildenv.sh and setup-installenv.sh will call 'sudo ./setup-udev.sh' and you will most likely be prompted for a password which is be your user password.  If you do not have sudo access to your machine, you will need to run the setup-udev.sh script as root and also be sure that pip is installed by calling 'apt install python-pip' as root.

First download the scripts:

```
git clone https://github.com/MyFactomWallet/ledger-toolchain.git
cd ledger-toolchain
```

## Installing the Ledger development toolchain

If you wish to build the app yourself, execute

```
./setup-buildenv.sh
```

After this script executes the Ledger BOLOS environment will be configured and the Factom Ledger source code will be compiled.  To install the Factom app that was just built first delete the existing app on the device if present, then install the new one by executing the following

```
source configure.env
cd blue-app-factom
make delete
make load
```

## Setting up the install environment only

Alternatively, you can simply install the prebuilt app on the device.  A version of the app is contained within this repository.

To install the app ensure you are within the ledger-toolchain directory, then execute the following

```
./setup-installenv.sh
```

The setup install environment script only needs to be executed once.  

To update the app on the device with the latest one that is part of this repository,

```
git pull
./factomize-ledger.sh
```


