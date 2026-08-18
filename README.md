# Vim Starter

This repository was created to maintain a consistent Vim environment across Linux servers and has been tested on Vim 8.0.
This includes key-bindings and simple plugins with Vim packages.

## Requirements

- Vim >= 8.0
- [Nerd fonts](https://github.com/ryanoasis/nerd-fonts#font-installation)

## 📥 How to install?

- Go to a home directory.
```shell
cd ~
```
- Make a backup of your current setups.
```shell
mv .vim{,.bak}
mv .vimrc{,.bak}
```
- Clone the starter
```shell
git clone https://github.com/Kang-geophysics/vim_setup.git ~/vim/
```
- Move the setup files into your home directory.
```shell
mv ~/vim/.vimrc ~/
mv ~/vim/.vim ~/
```
- Remove a folder including trivials (e.g., `.git` folder and this `README.md`). 
```shell
rm -rf vim
```
- Unzip plugins. (This is an option. But if you don't want to use plugins, please deactivate setup in `.vimrc`)
```shell
cd ~/.vim/
tar -xzf pack.tar.gz
```

## ➕ Add helptags (Options)

To add helptags, please type following commands:

```shell
vim -u NONE -c 'helptags ALL' -c quit
```
Or, you can generate individually.

```shell
vim -u NONE -c 'helptags ~/.vim/pack/plugins/start/auto-pairs/doc' -c quit
vim -u NONE -c 'helptags ~/.vim/pack/plugins/start/commentary/doc' -c quit
vim -u NONE -c 'helptags ~/.vim/pack/plugins/start/vimwiki/doc' -c quit
vim -u NONE -c 'helptags ~/.vim/pack/plugins/start/lightline/doc' -c quit
vim -u NONE -c 'helptags ~/.vim/pack/plugins/start/vim-devicons/doc' -c quit
vim -u NONE -c 'helptags ~/.vim/pack/plugins/start/vim-fugitive/doc' -c quit
vim -u NONE -c 'helptags ~/.vim/pack/plugins/start/nerdtree/doc' -c quit
```

## ⌨️ Keymaps

The leader key is configured as `<Space>`. All keybindings follow standard Vim patterns along with intuitive [LazyVim-inspired](https://www.lazyvim.org/) conventions.
If you want to edit keybindings, open the `~/.vim/keybinds.vim` file and edit.

```shell
vi ~/.vim/keybinds.vim
```
### General & Mode Switching

| Keybinding | Mode | Action |
| :--- | :--- | :--- |
| `;;` | Insert | Fast escape to Normal mode |
| `<Leader>ur` | Normal | Clear search highlight (`:noh`) |
| `<Leader>e` | Normal | Toggle NERDTree file explorer |
| `<Leader>n` | Normal | Toggle netrw file explorer |

### Line Movement

| Keybinding | Mode | Action |
| :--- | :--- | :--- |
| `Alt + k` | Normal / Visual | Move current line/selection up |
| `Alt + j` | Normal / Visual | Move current line/selection down |

### Buffer Navigation

| Keybinding | Mode | Action |
| :--- | :--- | :--- |
| `[b` | Normal | Go to previous buffer |
| `]b` | Normal | Go to next buffer |
| `<Leader>bd` | Normal | Delete (close) current buffer |

### Window Navigation & Management

| Keybinding | Mode | Action |
| :--- | :--- | :--- |
| `Ctrl + h/j/k/l` | Normal | Navigate to window (Left / Down / Up / Right) |
| `<Leader>%` | Normal | Split window vertically |
| `<Leader>"` | Normal | Split window horizontally |
| `<Leader>wx` / `<Leader>wr` | Normal | Swap windows / Rotate windows |
| `<Leader>wH/J/K/L` | Normal | Move window to far Left / Bottom / Top / Right |
| `<Leader>wd` | Normal | Close current window |
| `<Leader>w+` / `<Leader>w-` | Normal | Increase / Decrease window height |
| `<Leader>w>` / `<Leader>w<` | Normal | Increase / Decrease window width |
| `<Leader>w=`| Normal | Resize all window to be equal|

### Quickfix, Location List & Terminal

| Keybinding | Mode | Action |
| :--- | :--- | :--- |
| `<Leader>xq` / `[q` / `]q` | Normal | Toggle Quickfix list / Previous item / Next item |
| `<Leader>xl` / `[l` / `]l` | Normal | Toggle Location list / Previous item / Next item |
| `<Leader>ft` | Normal | Open bottom terminal pane (4 rows) |

### Formatting text based on `textwidth`

| Keybinding | Mode | Action |
| :--- | :--- | :--- |
| `Q`| Normal/Visual | Format text and cursor jump to the start of line  |
| `gQ`| Normal/Visual | Format text and cursor stay at current cursor location |

### Vimwiki

| Keybinding | Mode | Action |
| :--- | :--- | :--- |
| `<Leader>kk`| Normal | Go to vimwiki index  |
| `<Leader>ki`| Normal | Go to diary index |
| `<Leader>kd`| Normal | Go to today's diary note |

### Vim-LSP

| Keybinding | Mode | Action |
| :--- | :--- | :--- |
| `<Leader>ll`| Normal | Check LSP status |
| `gd`| Normal | Go to definition |
| `[g`| Normal | Go to previous diagnostic |
| `]g`| Normal | Go to next diagnostic |
| `K`| Normal | Hover |

## 📦 Plugins

- [Auto-pairs](https://github.com/jiangmiao/auto-pairs)
- [Lightline](https://github.com/itchyny/lightline.vim)
- [Gruvbox-theme](https://github.com/morhetz/gruvbox)
- [NerdTree](https://github.com/preservim/nerdtree)
- [Vim-commentary](https://github.com/tpope/vim-commentary)
- [Vim-wiki](https://github.com/vimwiki/vimwiki)
- [Vim-devicons](https://github.com/ryanoasis/vim-devicons)
- [Vim-fugitive](https://github.com/tpope/vim-fugitive)
- [Vim-lsp](https://github.com/prabirshrestha/vim-lsp)

### How to add another plugins?

`.vim/pack/plugins/` has two directories. 

If you want to automatically load plugins, please install the plugins under `.vim/pack/*/start`. Then those plugins will be automatically loaded when you open the Vim.

If you want to manually load plugins, please install the plugins under `.vim/pack/*/opt`. And when you need them, just type `:packadd {plugin_name}` to load them. 

### Notification

- Currently, `pack.tar.gz` doesn't include this `vim-lsp.vim` plugin, which is kind of connector between language server (LS) and editor (client), though this repository contains `lsp.vim` configuration file for `python` (using `ruff`) and `markdown` (using `rumdl`).
- If you want to use LSP (language server protocol) feature in your Vim like VS code, please install this plugin (using `git clone {url}`) manually into `~/.vim/pack/plugins/start/`.
- In case of LS, if you use virtual environment, just install the server into your virtual environment (e.g., using `pip install ruff`). Or just use [vim-lsp-settings](https://github.com/mattn/vim-lsp-settings) to manage LSP.


## Screenshots

### Overall

- Markdown
<img width="1904" height="1034" alt="image" src="https://github.com/user-attachments/assets/21dfcd3f-705f-4f71-bf78-ca4cddc7d32f" />

- Python
<img width="1904" height="1034" alt="image" src="https://github.com/user-attachments/assets/dcf0a6c4-3f2f-456a-b5a0-091947343354" />



### Status line

<img width="1901" height="58" alt="image" src="https://github.com/user-attachments/assets/ff56b62b-a1f2-4083-8f40-a4fc53693326" />





