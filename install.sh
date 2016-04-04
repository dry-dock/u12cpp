#!/bin/bash -e

echo "======================= Installing gcc 5 ======================"
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install gcc-5
sudo update-alternatives --remove-all gcc
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 20
sudo update-alternatives --config gcc
gcc --version
echo "================== Successfully Installed gcc 5 ==============="

echo "================== Installing clang 3.4.2 ====================="
sudo wget http://llvm.org/releases/3.4.2/clang+llvm-3.4.2-x86_64-unknown-ubuntu12.04.xz
tar xf clang+llvm-3.4.2-x86_64-unknown-ubuntu12.04.xz
cd clang+llvm-3.4.2-x86_64-unknown-ubuntu12.04
sudo cp -R * /usr/local/
cd ../
clang --version
echo "============= Successfully Installed clang 3.4.2 =============="
