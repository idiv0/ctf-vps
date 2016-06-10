
# Apt-get various standard bits of software
sudo apt-get update
# Remove standard vim so we can install a versin with a python interpreter
sudo apt-get -y remove vim
sudo apt-get -y install vim-nox-py2
sudo apt-get -y install python-pip python3-pip python-dev build-essential libtool g++ gcc texinfo curl wget automake autoconf python-dev git subversion unzip wget libcurl pkg-config
sudo pip install virtualenvwrapper jedi
# End of apt-get software

# Python virtual environment
export WORKON_HOME=~/envs
export PROJECT_HOME=~/projects
mkdir -p $WORKON_HOME
mkdir -p $PROJECT_HOME
source /usr/local/bin/virtualenvwrapper.sh
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc
echo "WORKON_HOME=~/envs" >> ~/.bashrc
# End of Python virtual environment

# Vim config
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# Pathogen
echo "execute pathogen#infect()" >> ~/.vimrc
mkdir -p ~/.vim/bundle
# Jedi-vim for Python auto-complete in vim
cd ~/.vim/bundle/ && git clone --recursive https://github.com/davidhalter/jedi-vim.git
# End of Vim config


# Install CTF tools
# All Python based CTF tools are installed into a 'ctf' virtual environment.
mkvirtualenv --system-site-packages ctf

# Store tools in a "ctfs" directory
mkdir -p ctfs
pushd ctfs
git clone https://github.com/zardus/ctf-tools.git
./ctf-tools/bin/manage-tools setup
source ~/.bashrc
manage-tools install angr
manage-tools install barf
manage-tools install bindead
manage-tools install checksec
manage-tools install crosstool
manage-tools install elfkickers
manage-tools install elfparser
manage-tools install evilize
manage-tools install gdb
manage-tools install peda
manage-tools install pwntools
manage-tools install preeny
manage-tools install qemu
manage-tools install radare2
manage-tools install ropper
manage-tools install rp++
manage-tools install shellnoob
manage-tools install shellsploit
manage-tools install virtualsocket
manage-tools install villoc
manage-tools install xrop
manage-tools install binwalk
manage-tools install firmware-mod-kit
manage-tools install cribdrag
manage-tools install foresight
manage-tools install hashkill
manage-tools install hashpump
manage-tools install hashpump-partialhash
manage-tools install hash-identifier
manage-tools install littleblackbox
manage-tools install msieve
manage-tools install pemcrack
manage-tools install pkcrack
manage-tools install python-paddingoracle
manage-tools install reveng
manage-tools install xortool
manage-tools install yafu
manage-tools install commix
manage-tools install dirb
manage-tools install dirs3arch
manage-tools install sqlmap
manage-tools install subbrute
# manage-tools install apktool
# manage-tools install android-sdk
popd
# End of CTF tools

