# sudo apt-get install git
git config --global push.default simple
sudo apt-get install emacs
sudo apt-get install gparted
sudo apt-get update --fix-missing
sudo apt-get install kdiff3
sudo apt-get install qgit
sudo apt-get install -y openssh-server
sudo apt-get remove -y --purge libreoffice*
sudo apt-get remove -y --purge thunderbird*
sudo apt-get remove -y --purge pidgin*
sudo apt-get remove -y --purge tomboy*
#sudo apt-get install -y dosbox
#sudo apt-get install -y virualbox-5.0
sudo apt-get install -y gimp
sudo apt-get install -y blender

# Google Chrome  (TODO: make this idempotent)
# This is the way to install Google Chrome via command-line
#sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list'
#sudo apt-get update
#sudo apt-get install google-chrome-stable

#MANUAL: www.youtube.com/html5 to get youtube to use html5 instead of flash

#TODO: avoid error when double-creating group/user
sudo addgroup guarded
sudo useradd family -p `openssl passwd happy` -m -g guarded

gsettings set org.cinnamon.settings-daemon.plugins.power lock-on-suspend 'false'
gsettings set org.cinnamon.desktop.screensaver lock-enabled 'false'
# GIMP: View > Show Layer Boundary
# GIMP: View > Preferences > min/max undo raise the values

sudo apt-get install privoxy
gsettings set org.gnome.system.proxy.http host 127.0.0.1
gsettings set org.gnome.system.proxy.http port 8118
gsettings set org.gnome.system.proxy.https host 127.0.0.1
gsettings set org.gnome.system.proxy.https port 8118

if [ ! -f /etc/privoxy/user.action.TOUCHED ]; then
sudo sh -c  'echo "
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
  www.youtube.com/embed/playlist
  s.ytimg.com
# This one allows the thumbnails to show up
  .ytimg.com:443
# This one allows all youtube videos to be played
# .googlevideo.com:443
  r2---sn-1gi7zn7e.googlevideo.com:443
  r8---sn-1gi7zn7z.googlevideo.com:443
# check /var/privoxy/logfile for more googlevideo.com:443 that were blocked
" >> /etc/privoxy/user.action';
 sudo sh -c 'echo "
## Logs blocked attempts to be found in /etc/privoxy/logfile
debug 1025
" >> /etc/privoxy/config';
    sudo touch /etc/privoxy/user.action.TOUCHED
fi

gsettings set org.gnome.system.proxy mode manual
gsettings set org.gnome.system.proxy.http host 127.0.0.1
gsettings set org.gnome.system.proxy.http port 8118
gsettings set org.gnome.system.proxy.https port 8118
gsettings set org.gnome.system.proxy.https host 127.0.0.1
