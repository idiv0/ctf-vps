# ctf-vps
Setting up a VPS for playing CTFs. This has some simple scripts to help setup an Ubuntu 16.04 with software often needed to play a CTF.

The script is expecting to work on a new(ish) server. This has been tested rigorously, in that it "works on my machine". YMMV.

## Usage
./setup_ctf.sh

## Python tools
A python virtualenv is created to install some of the CTF tools. Along with this, we install [virtualenvwrapper](https://virtualenvwrapper.readthedocs.io/en/latest/index.html). The virtualenv is called "ctf"

To switch to the virtualenv, use `workon ctf`. This will change the bash prompt to look something like:

> (ctf)$ 

To exit the virtual environment, use `deactivate`.

## Note
This is quite a crude setup script. Running it multiple times is likely to add duplicate entries into your .bashrc file.
