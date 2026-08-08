# vim

This is a simple vim setup including simple plugins using vim-package.

```shell
cd ~
git clone https://github.com/Kang-geophysics/vim.git
cd ~/.vim/
tar -xvf pack.tar
```

To add helptags, please following commands:

```shell
vim -u NONE -c 'helptags ~/.vim/pack/plugins/start/commentary/doc" -c quit
vim -u NONE -c 'helptags ~/.vim/pack/plugins/start/vimwiki/doc' -c quit
vim -u NONE -c 'helptags ~/.vim/pack/plugins/start/lightline/doc' -c quit
```

## Plugins

- [Lightline](https://github.com/itchyny/lightline.vim)
- [Gruvbox-theme](https://github.com/morhetz/gruvbox)
- [Vim-commentary](https://github.com/tpope/vim-commentary)
- [Vim-wiki](https://github.com/vimwiki/vimwiki)
