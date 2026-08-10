" ====================================================================
" General & UI Settings
" ====================================================================
set nocompatible              " Use Vim defaults instead of old Vi behaviors
syntax on                     " Enable code syntax highlighting
set number                    " Show line numbers
set relativenumber            " Show relative line numbers for faster jumping
set cursorline                " Highlight the screen line of the cursor
set wrap                      " Wrap long text lines visually
set encoding=utf-8            " Set standard UTF-8 string encoding
set scrolloff=5               " Keep the space from the cursor

" ====================================================================
" Tabs & Indentation (2-Space Standard)
" ====================================================================
set tabstop=2                 " Number of visual spaces per TAB character
set softtabstop=2             " Number of spaces a TAB feels like when editing
set shiftwidth=2              " Number of spaces used for auto-indentation
set expandtab                 " Convert TAB characters into physical spaces
set autoindent                " Copy indent from current line when starting a new line
set smartindent               " Insert indents automatically where appropriate

" ====================================================================
" Search Settings
" ====================================================================
set incsearch                 " Highlight search matches instantly while typing
set hlsearch                  " Keep search matches highlighted
set ignorecase                " Ignore case rules when using search patterns
set smartcase                 " Override 'ignorecase' if pattern contains uppercase

" ====================================================================
" Performance & Backup Tweaks
" ====================================================================
set nobackup                  " Do not create alternative backup files
set noswapfile                " Disable swap files for smoother handling
set hidden                    " Allow switching buffers without saving first
set history=1000              " Increase the command and search history limit

" ====================================================================
" Change cursor shape based on mode in terminal
" ====================================================================
let &t_EI = "\<Esc>[2 q"  " Normal mode: Block
let &t_SI = "\e[6 q"      " Steady vertical bar in Insert mode

" ====================================================================
" Custom keymaps
" ====================================================================
source ~/.vim/keybinds.vim

" ====================================================================
" Enable syntax highlighting for markdown fenced code block
" ====================================================================
let g:markdown_fenced_languages = ['cpp', 'js=javascript',
      \ 'json', 'python', 'bash=sh', 'vim', 'ruby', 'yaml', 'toml']

" ====================================================================
" Colorscheme
" ====================================================================
set background=dark                  " dark or light
let g:gruvbox_contrast_dark = "hard" " soft or medium or hard
colorscheme gruvbox

" ====================================================================
" light line
" ====================================================================
set laststatus=2
set noshowmode
source ~/.vim/lightline_w_devicon.vim
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'component_function': {
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat'
      \ }
      \ }

" ====================================================================
" Vimi-wiki
" ====================================================================
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': 'md'}]
let g:vimwiki_global_ext = 0 " Treat all markdown file as part of Vimwiki

" ====================================================================
" comments plugin
" ====================================================================
filetype plugin indent on     " Enable detection, plugins, and indenting for filetypes
