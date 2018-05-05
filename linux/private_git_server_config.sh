#http://www.instructables.com/id/GitPi-A-Private-Git-Server-on-Raspberry-Pi/

#step 1: set up ssh for raspberry pi
#step 2: format a user driver to FAT 
#step 3: install git core
sudo apt-get update
sudo apt-get upgrade
sudo reboot

sudo apt-get install wget git-core

#step 4: mount usb driver
mkdir usbdrv
sudo blkid #check index of driver
sudo nano /etc/fstab
 /dev/sda1 /home/pi/usbdrv vfat uid=pi,gid=pi,umask=0022,sync,auto,nosuid,rw,nouser 0 0
sudo reboot

#step 5: step up pi git directory
#in server side
mkdir usbdrv/code.git
cd usbdrv/code.git
git init --bare

#in client side
mkdir code
git init

git remote add pi pi@192.168.1.126:/home/pi/usbdrv/code.git

git add .
git commit -m "init"
git push pi master
git pull
