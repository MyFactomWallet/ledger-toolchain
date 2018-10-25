# ledger-toolchain

## Instructions for Side Loading the Factom Nano S App 

### Before you start *PLEASE* ensure you have your Ledger Nano S mnumonic backed up in case you need to reset your device!!!

The instructions contained here will side-load your new Factom ledger app onto your Nano S device.  This docker container only has been tested from a linux environment, specifically Ubuntu 16.04 and 17.04.


To prepare your ledger, first plug in the ledger device into your USB port and enter your pin number.  At this point you should be at the home screen on the Nano S.

Next, you need to pull the docker container from the repository.  To do this open up a linux terminal execute the following command:

```
sudo docker pull bunfield/factomize-ledger
```

The docker pull command will take a while to complete if it is your first time pulling this container.  After it is finished, make sure your Nano S didn't go back to sleep, If so, re-enter your PIN to get back to the Nano S home screen.  At this point, you should then run the following command.

```
sudo docker run --rm -it --privileged -v /dev/bus/usb:/dev/bus/usb bunfield/factomize-ledger
```

Follow the instructions on the Nano S display.

On your terminal console, you will see output similar to this as you accept the options on your Nano S.(Note the random keys that are generated will most likely be different than the ones generated for my device, so the output won't be exactly the same.)


```
Generated random root public key : b'044ca67b2310a3d36ff1b35bfa115b2a33bb18da47f021ca3ea712cf9a3c6c2e0d51e193609139365b643be38ec834a8ecbd532c3098feceab08ea84b25b6682ac'
Using test master key b'044ca67b2310a3d36ff1b35bfa115b2a33bb18da47f021ca3ea712cf9a3c6c2e0d51e193609139365b643be38ec834a8ecbd532c3098feceab08ea84b25b6682ac' 
Using ephemeral key b'040761857590e41ecc495eb8783e0e4e5270851003a758d3d88cf2c88d2d88950762166a7b868a673f4f7b3dbe507fa3e8f6262cec7a8fa25aa4550f7c03723e6c'
Broken certificate chain - loading from user key
Generated random root public key : b'040b799c86cc896be70c0cc91bab5c413510033e14b277c7d96d19de3aa579a7cc2a8fae8ef5b7ec1c699d6222ff73b13017a7d755e3a4931794c200a6508c776d'
Using test master key b'040b799c86cc896be70c0cc91bab5c413510033e14b277c7d96d19de3aa579a7cc2a8fae8ef5b7ec1c699d6222ff73b13017a7d755e3a4931794c200a6508c776d' 
Using ephemeral key b'04e8e165567fe21927335a38c15680186e816df2b9732cb62767f052432ac834d770ee6d08810bb571b86898724b7b4dc25024fa92dc2ee3c87a61ad79651c201f'
Broken certificate chain - loading from user key
Application full hash : 06475a38e534d4c04d1f8ec6bad703256e02740024731a40a8f9bf3589375786
```

If you see the above outputs, then the application has installed correctly.  You will now see your new Factom app on your Nano S device.  Launch the app on the Nano S and head on over to https://www.myfactomwallet.com.  Currently, the only browser supported for the Nano S and MFW is google chrome with the U2F extension.   Be sure to install the U2F extension before using the ledger.

If you are on the testnet, you can obtain your free Testoids at https://faucet.factoid.org.  
