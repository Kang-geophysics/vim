# vim

This is a simple vim setup including key-bindings and simple plugins with vim-package.

## How to install?

```shell
cd ~
mv .vim{,.bak}
mv .vimrc{,.bak}
git clone https://github.com/Kang-geophysics/vim_start.git ./vim/
mv vim/.vimrc ~/
mv vim/.vim ~/
rm -rf vim
cd ~/.vim/
tar -xvf pack.tar
```

## Add helptags

To add helptags, please type following commands:

```shell
vim -u NONE -c 'helptags ALL' -c quit
```
Or, you can generate individually.

```shell
vim -u NONE -c 'helptags ~/.vim/pack/plugins/start/commentary/doc' -c quit
vim -u NONE -c 'helptags ~/.vim/pack/plugins/start/vimwiki/doc' -c quit
vim -u NONE -c 'helptags ~/.vim/pack/plugins/start/lightline/doc' -c quit
vim -u NONE -c 'helptags ~/.vim/pack/plugins/start/vim-devicons/doc' -c quit
vim -u NONE -c 'helptags ~/.vim/pack/plugins/start/nerdtree/doc' -c quit
```

## How to edit keybindings?

I wrote this based on the [LazyVim](https://www.lazyvim.org/) Keymaps default configuration.
If you want to edit keybindings, open the `~/.vim/keybinds.vim` file and edit.

```shell
vi ~/.vim/keybinds.vim
```

## Plugins

- [Lightline](https://github.com/itchyny/lightline.vim)
- [Gruvbox-theme](https://github.com/morhetz/gruvbox)
- [NerdTree](https://github.com/preservim/nerdtree)
- [Vim-commentary](https://github.com/tpope/vim-commentary)
- [Vim-wiki](https://github.com/vimwiki/vimwiki)
- [Vim-devicons](https://github.com/ryanoasis/vim-devicons)

## How to add another plugins?

`.vim/pack/plugins/` has two directories. 

If you want to automatically load plugins, please install the plugins under `.vim/pack/*/start`. Then those plugins will be automatically loaded when you open the Vim.

If you want to manually load plugins, please install the plugins under `.vim/pack/*/opt`. And when you need them, just type `:packadd {plugin_name}` to load them. 

## A screenshot

<img width="1496" height="933" alt="image" src="https://github.com/user-attachments/assets/df1fcdfc-f48c-4fc6-b2ce-6ed2bb75feea" />

