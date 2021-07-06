sudo snap install gimp gitkraken spotify vlc
sudo apt-get install -y curl flameshot htop vim
cd ~/Downloads/
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
# install slack, teams and zoom individually (via software installer)

# as per the info here: https://github.com/flameshot-org/flameshot
# flameshot needs to be bound manually in order to be the default application
# run with PrtSc key
gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot '[]'
