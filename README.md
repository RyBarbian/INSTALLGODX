# INSTALLGODX on fresh Ubuntu VM

Open Terminal application

#Upgrade and update ubuntu and git with the following commands in terminal:

# sudo apt-get upgrade
# sudo apt-get update
# sudo apt install git

#Install for GoDxoinB1.1.1 and godxoin.conf files

# git clone https://github.com/RyBarbian/INSTALLGODX

# BE SURE to edit the rpcuser and rpcpassword fields BEFORE running install.sh
#this is done by the following commands: 

# cd INSTALLGODX 
# sudo nano godxoin.conf

#edit the aformentioned fields to your a username and password of your choice
Ex: rpcuser=<yourname> 
rpcpassword=<yourpassword>
  
  To:
  
rpcuser=yourusername123#!
rpcpassword=yourpassword123#!

# ctrl=o to save 
# ctrl=z to exit

#THEN

#in the INSTALLGODX folder

# ./install.sh


follow the instructions
hit enter to install btc
hit y to delete write protected files (this is a fucntion of downloading, moving and removing files. I can address this at a later time)

#To run GoDxoin Linux GUI
# cd
# cd GoDxoinB1.1.1
# ./GODXOIN-QT.PRO

There will be a few errors including an attempted GODXOIN-QT.PRO lanch that results in failure to load blkindex
This is normal

Relaunch GODXOIN-QT.PRO  via ./GODXOIN-QT.PRO

Be sure to encrypt your wallet after launch!!
