# sudo apt-get install git
git config --global push.default simple
sudo apt-get install emacs
sudo apt-get install gparted
sudo apt-get update --fix-missing
sudo apt-get install kdiff3
sudo apt-get install qgit
sudo apt-get install openssh-server
sudo apt-get remove --purge libreoffice*
sudo apt-get remove --purge thunderbird*
sudo apt-get remove --purge pidgin*
sudo apt-get remove --purge tomboy*
sudo apt-get install dosbox
sudo apt-get install virualbox-5.0
sudo apt-get install gimp
sudo apt-get install blender

# Google Chrome
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list'
sudo apt-get update
sudo apt-get install google-chrome-stable

sudo addgroup guarded
sudo useradd family -p `openssl passwd happy` -m -g guarded

gsettings set org.cinnamon.settings-daemon.plugins.power lock-on-suspend 'false'
gsettings set org.cinnamon.desktop.screensaver lock-enabled 'false'
# GIMP: View > Show Layer Boundary
# GIMP: View > Preferences > min/max undo raise the values
