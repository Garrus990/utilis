sudo apt-get update
sudo apt-get install -y zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
# after ohmyzsh is installed, it will ask to change the default shell to zsh - approve it!

# substitute plugins with the plugins of my choice :)
PLUGINS="autopep8 bgnotify colored-man-pages colorize command-not-found compleat extract git gitignore pip sudo themes ubuntu"
sed -i "s/^plugins=.*/plugins=($PLUGINS)/g" ~/.zshrc

echo "# " >> ~/.zshrc
echo "# bgnotify setup" >> ~/.zshrc
echo "bgnotify_threshold=4" >> ~/.zshrc

# set the defualt theme
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="jaischeema"/g' ~/.zshrc

source ~/.zshrc
