sudo apt install -y git gcc ripgrep unzip ccls curl python3 python3-pip
sudo snap install pyright --classic
pip3 install --user --upgrade pynvim

wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod +x nvim.appimage
./nvim.appimage --appimage-extract
sudo mv ./squashfs-root/* /

git clone https://github.com/DuploVim/DuploVim ~/.config/nvim 

echo "DONE, RUN 'nvim' command to run DuploVim"
