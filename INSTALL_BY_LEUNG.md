
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
git clone https://hub.fastgit.org/releung/nvim-config/
cd nvim-config
./doc/Nvim_setup.sh
```

# clangd Install
```shell
sudo apt-get install clangd-9
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-9 100
```

# vim-language-server Install
```shell
_ npm install -g vim-language-server
```

# python default
```shell
#先删除默认的Python软链接：
sudo rm /usr/bin/python

#然后创建一个新的软链接指向需要的Python版本：
sudo ln -s /usr/bin/python3.8 /usr/bin/python
```
