cd ~
ssh-keygen
read  -sp 'Please copy the contents of the ~/.ssh/id_rsa.pub to Github to authenticate this computer [ENTER].'
# now, before moving on, add the key to github
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true
sudo apt-get install -y git terminator
git config --global user.name "Szymon Wojciechowski"
git clone git@github.com:Garrus990/utils.git
