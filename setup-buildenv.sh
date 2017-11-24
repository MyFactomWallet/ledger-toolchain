#!/bin/sh

./setup-installenv.sh

if [ -d bolos_env ]; then

  mkdir bolos_env

  cd bolos_env

  wget https://launchpad.net/gcc-arm-embedded/5.0/5-2016-q3-update/+download/gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar.bz2
  bunzip2 gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar.bz2
  tar xvf gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar
  rm -f gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar

  wget http://releases.llvm.org/4.0.0/clang+llvm-4.0.0-x86_64-linux-gnu-ubuntu-16.10.tar.xz
  tar xvf clang+llvm-4.0.0-x86_64-linux-gnu-ubuntu-16.10.tar.xz
  rm -f clang+llvm-4.0.0-x86_64-linux-gnu-ubuntu-16.10.tar.xz

  ln -sf clang+llvm-4.0.0-x86_64-linux-gnu-ubuntu-16.10 clang-arm-fropi 

  cd ..

fi


. ./configure.env

cd blue-app-factom

make

cd ..
