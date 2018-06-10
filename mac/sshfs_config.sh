#url: http://www.instructables.com/id/ShareEditCreate-Files-for-Your-Raspberry-Pi-From-a/

sshfs pi@192.168.1.126:/home/pi/work/ /Users/KevinLiu/work/
umount -f pi@192.168.1.126:/home/pi/work/

#when ssh need indectiication
sudo sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa paofu@192.168.1.126:/home/paofu/kevin  /Users/kevinliu/pi/unbuntu_mate 
