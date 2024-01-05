# DuploVim
DuploVim is a very easy and customizable neovim configuration

# Requirements
## Lsps (optional)
- ccls
- lua-language-server
- arduino-language-server
- rust-analyzer
- pyright
- nixd
- pasls

## Other (required)
- Nerd Font (very important, but optional)
- curl
- ripgrep
- unzip
- compiler (I recommend gcc)
- python3 provider in neovim
- directory ```coding``` in your home directory
- neovim (latest) (install script installs it automatically)

# Installation
## On ubuntu
- install wget (```sudo apt install wget -y```)
- run ```wget https://github.com/DuploVim/DuploVim/raw/main/ubuntu.sh```
- run ```chmod +x ./ubuntu.sh```
- run ```./ubuntu.sh```
- run ```nvim``` and wait all plugins to install

## Other
- satisfy dependencies by youself
- run ```git clone https://github.com/DuploVim/DuploVim ~/.config/nvim```
- run ```nvim```
- wait all plugins to install
- restart neovim with ```:qa!``` and ```nvim```
- Enjoy! =)
