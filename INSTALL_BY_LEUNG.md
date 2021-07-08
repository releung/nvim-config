
> core/others.vim 是自用的 .vimrc 修改而来. 习惯该配置的快捷键了.

# Install nvim
```shell
wget https://download.fastgit.org/neovim/neovim/releases/download/nightly/nvim.appimage
mv nvim.appimage nvim
chmod a+x nvim
_ mv nvim /usr/local/bin
```

# nvim config
```shell
wget https://github.com.cnpmjs.org/jdhao/nvim-config/
git clone https://hub.fastgit.org/jdhao/nvim-config/
cd nvim-config
cd docs
./Nvim_setup.sh

cp ../init.vim ~/.config/nvim/init.vim
cp ../lua/plugins.lua ~/.config/nvim/lua/plugins.lua
```

# clangd Install
```shell
sudo apt-get install clangd-9
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-9 100
```

