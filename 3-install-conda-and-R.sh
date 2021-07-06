# install miniconda
CONDA_DIR=~/conda
PATH=$CONDA_DIR/bin:$PATH
cd ~/Downloads
wget --quiet --no-check-certificate https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
/bin/bash Miniconda3-latest-Linux-x86_64.sh -f -b -p $CONDA_DIR
rm Miniconda3-latest-Linux-x86_64.sh
$CONDA_DIR/bin/conda init zsh
# at this point one should log in and out for the changes to take place
sudo chmod 777 /etc/profile.d
echo export PATH=$CONDA_DIR/bin:'$PATH' > /etc/profile.d/conda.sh
sudo chmod 755 /etc/profile.d

# install pygment that is needed by zsh's colorize functionality
conda install -c conda-forge pygments
# add alias to .bashrc file to utilize the colorize functionality in full
echo "\n# aliases that allow for colorized output" >> ~/.bash_aliases
echo "alias cat='ccat'" >> ~/.bash_aliases
echo "alias less='cless'" >> ~/.bash_aliases
echo "alias more='cless'" >> ~/.bash_aliases
source ~/.bash_aliases

# create ML environment
conda env create -f ml-env.yml

# install R
sudo apt-get install --no-install-recommends software-properties-common dirmngr
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
sudo apt-get update
sudo apt-get install --no-install-recommends -y r-base

# install RStudio
sudo apt-get install gdebi-core
# new version should be installed each time
cd ~/Downloads
wget https://download2.rstudio.org/server/bionic/amd64/rstudio-server-1.4.1717-amd64.deb
sudo gdebi rstudio-server-1.4.1717-amd64.deb
