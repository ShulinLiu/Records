# download image of unbuntu mate for raspberry pi

# format SD card to FAT (USB stick did not pass test)

# write image of unbuntu to SD card with E-torch in Mac

# open SD card folder and find file "config.txt"

# set up LCD in "config.txt" like
 max_usb_current=1
 hdmi_group=2
 hdmi_mode=87
 hdmi_cvt 1024 600 6 0 0 0
 hdmi_drive=1

# insert SD card to raspberry pi and power on

# wait to system finishing installation

# set up wifi channel if wifi cannot find in search list
 --enable channel 12, 13
 iw reg set SG #Singapore wifi router sometimes use channel 12, 13
  but unbuntu mate by default only support channel 1 - 11

# set up git and config to github
 git clone <> ./path
