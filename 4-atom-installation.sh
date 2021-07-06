### Atom installation should follow installation of conda since we are using pip frequently
### install atom
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get -y install atom

# install in base environment
conda activate base

### install the most useful packages
# linter
apm install linter linter-ui-default intentions busy-signal

# install Python linter based on pycodestyle
conda install -y pycodestyle autopep8
apm install linter-pycodestyle

# install black - a python formatter
conda install -y -c conda-forge black
apm install python-black

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
# original tablr repo has an error - keep an eye on it!
apm install https://github.com/mfripp/atom-tablr.git
