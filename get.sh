(git --version >/dev/null && curl --version>/dev/null && unzip>/dev/null && python3 --version>/dev/null && (gcc>/dev/null || clang>/dev/null || zig>/dev/null)) || echo "NOT ALL DEPENDENCIES ARE SATISFIED" && exit
command -v nvim >/dev/null
if [[ $? -ne 0 ]]; then
    curl https://github.com/neovim/neovim/releases/download/stable/nvim.appimagehttps://github.com/neovim/neovim/releases/download/stable/nvim.appimage --output nvim.appimage
	./nvim.appimage --appimage-extract
	echo "Script need you password to install neovim"
	sudo cp ./squashfs-root/* -r /
else
    nvim_version=$(nvim --version | head -1 | grep -o '[0-9]\.[0-9]')

    if (( $(echo "$nvim_version < 0.9 " |bc -l) )); then
            echo "Wrong version of Nvim is installed"
			exit
git clone https://github.com/DuploVim/DuploVim ~/.config/nvim/
