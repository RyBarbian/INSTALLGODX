#!/bin/bash
cd

sudo apt-add-repository ppa:bitcoin/bitcoin



#//Make sure build enviroment is up to date

sudo apt-get update 
sudo apt-get install git build-essential g++ libssl-dev libboost-all-dev libdb4.8++-dev libqrencode-dev qt4-qmake libqt4-dev


#//Download and Install Mini-UPnPC

mkdir miniupnpc
cd miniupnpc
wget "http://miniupnp.tuxfamily.org/files/miniupnpc-1.9.tar.gz"
tar -zxvf miniupnpc-1.9.tar.gz
cd miniupnpc-1.9/
sudo make install
cd ~/


#//Clone the GoDxoin Beta v 1.0.1 repo from Git

git clone https://github.com/RyBarbian/GoDxoinB1.1.1
.git

#Compile the GoDxoin Beta v 1.0.1 daemon (godxoind)

cd ~/GoDxoinB1.1.1/src/
make clean -f makefile.unix
make -f makefile.unix

#In the $ .godxoin folder make a godxoin.conf file

cd
mkdir ~/.godxoin
cd INSTALLGODX
mv godxoin.conf ~/.godxoin/godxoin.conf
cd


# daemon will be compiled, and can be started from the command line
#($ .godxoind --daemon) 

cd ~/GoDxoinB1.1.1
qmake "USE_UPNP=1" "USE_IPV6=1" GodCoin.pro
git clone https://github.com/RyBarbian/GoDxoinMakefile.git
cd GoDxoinMakefile
cp Makefile ~/GoDxoinB1.1.1/Makefile
cd ~/GoDxoinB1.1.1
make 
cd GoDxoinB1.1.1
./GODXOIN-QT.PRO

#qt wallet will be compiled, and can be run by double clicking godxoin executable






