# mintsetup
1. Make a liveCD usb stick
2. Install with root partition at 16384 MB with a second partition of equal size

#### to start up with git ####
sudo apt-get install git
cd ~
mkdir git
cd git
git init
git pull https://github.com/anerb/mintsetup
cat mintsetup.sh | sh -ev
##############################

To backup
dd if=/dev/sda2 of=/dev/sda4

To restore
start up with liveCD
dd if=/dev/sda4 of=/dev/sda2

##### Privoxy ####
in /etc/privoxy/config:
debug 1025

in /etc/privoxy/user.action:
 ############################################################
 # Blacklist
 ############################################################
 { +block }
 / # Block *all* URLs

 ############################################################
 # Whitelist
 ############################################################
 { -block }
  .google.com
  .google.ch
  .gstatic.com
  .googleusercontent.com
  .youtube.com:443
  s.ytimg.com
  r2---sn-1gi7zn7e.googlevideo.com:443
  r8---sn-1gi7zn7z.googlevideo.com:443
  
  in /var/privoxy/logfile: you can see what was blocked
  youtube needs to get a specific googlevideo.com address added, but you can't tell from the link
  
  to shrink the logfile:
  sudo truncate logfile --size 1024  <----- size in bytes to keep
