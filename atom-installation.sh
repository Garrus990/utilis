### install atom
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get -y install atom

### install the most useful packages
# linter
apm install linter linter-ui-default intentions busy-signal 

# install Python linter based on pycodestyle
conda install -y pycodestyle
apm install linter-pycodestyle

# atom-beautify
apm install atom-beautify
pip install --upgrade autopip8
pip install --upgrade isort

# highlight-selected
apm install highlight-selected

# file-icons
apm install --production file-icons

# minimap
apm install minimap

# expose
apm install expose

# kite
bash -c "$(wget -q -O - https://linux.kite.com/dls/linux/current)"

# hydrogen
apm install hydrogen

# terminal-plus
apm install terminal-plus

# python - docblock (automatic documentation for Python functions)
apm install docblock-python

# opening CSV files directly in atom
apm install https://github.com/mfripp/atom-tablr.git  # original tablr repo has an error - keep an eye on it!
