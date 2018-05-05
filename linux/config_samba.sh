#1. install samba
sudo apt-get upgrade
sudo apt-get update
sudo apt-get install samba samba-common-bin
sudo mkdir -m 1777 /share
sudo nano /etc/samba/smb.conf  #config file

[share]
Comment = Pi shared folder
Path = /share
Browseable = yes
Writeable = Yes
only guest = no
create mask = 0777
directory mask = 0777
Public = yes
Guest ok = yes

sudo useradd homeuser
sudo passwd homeuser  #--raspberry
sudo chown -R homeuser /share
sudo smbpasswd -a pi
sudo /etc/init.d/samba restart #restart samba service

