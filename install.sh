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

git clone https://github.com/RyBarbian/noixDoGB1.0.git
#//(it's spelled backward and dl's a folder named noixDoGB1.0/src to keep it semi-secret (just to keep the test net secure))



#Compile the GoDxoin Beta v 1.0.1 daemon (godxoind)

cd ~/noixDoGB1.0/src/
make -f makefile.unix

# daemon will be compiled, and can be started from the command line
#($ .godxoind --daemon) 

cd ~/noixDoGB1.0
qmake
rm Makefile
git clone https://github.com/RyBarbian/GoDxoinMakefile.git
cd GoDxoinMakefile
cp Makefile ~/noixDoGB1.0/Makefile
cd ~/noixDoGB1.0
make 
cd ~/

#qt wallet will be compiled, and can be run by double clicking godxoin executable


#In the $ .godxoin folder make a godxoin.conf file

mkdir ~/.godxoin
cd INSTALLGODX
mv godxoin.conf ~/.godxoin/godxoin.conf
cd ..
cd noixDoGB1.0
./GODXOIN-QT.PRO



