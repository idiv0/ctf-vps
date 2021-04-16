
# Apt-get various standard bits of software
sudo apt-get update
# Remove standard vim so we can install a versin with a python interpreter
sudo apt-get -y remove vim
sudo apt-get -y install vim-nox
sudo apt-get -y install python3-pip python3-dev build-essential libtool g++ gcc texinfo curl wget automake autoconf git subversion unzip wget pkg-config python python-dev git lsb-release
sudo pip3 install virtualenvwrapper jedi
# End of apt-get software

# Python virtual environment
export WORKON_HOME=~/envs
export PROJECT_HOME=~/projects
mkdir -p $WORKON_HOME
mkdir -p $PROJECT_HOME
source /usr/bin/virtualenvwrapper.sh
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

