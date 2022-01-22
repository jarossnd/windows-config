# Neovim Config

## Overview

This config is for my Windows 11 machine

## Prerequisites

1. Windows Terminal
2. FiraCode Nerd Font https://www.nerdfonts.com/font-downloads
3. Set Windows Terminal font

*** if you do not use Nerd Font then icons will not appear in neovim ***

## init.vim

```
" Jason Ross Neovim Config
" www.jasonross.dev

set encoding=UTF-8

" Line number configuration
set number
"set relativenumber

" Tab configuration
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set expandtab

" Allow mouse clicks
set mouse=a

" Set Python location in Windows
let g:python3_host_prog = 'C:\Users\jaross\AppData\Local\Programs\Python\Python310\python.exe'

:set hidden

" Give more space for displaying messages.
set cmdheight=2

" Change the escape key to jk
inoremap jk <Esc>
tnoremap jk <C-\><C-n>

set clipboard=unnamedplus

call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'christoomey/vim-tmux-navigator' " navigate from vim to tmux windows
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'EdenEast/nightfox.nvim'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'} "coc
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier'] "coc extensions
Plug 'alvan/vim-closetag'
Plug 'airblade/vim-gitgutterPlug'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'ryanoasis/vim-devicons'
call plug#end()


" vimscript nightfox configuration
lua << EOF
local nightfox = require('nightfox')

-- This function set the configuration of nightfox. If a value is not passed in the setup function
-- it will be taken from the default configuration above
nightfox.setup({
  fox = "nordfox", -- change the colorscheme to use nordfox
  styles = {
    comments = "italic", -- change style of comments to be italic
    keywords = "bold", -- change style of keywords to be bold
    functions = "italic,bold" -- styles can be a comma separated list
  },
  inverse = {
    match_paren = true, -- inverse the highlighting of match_parens
  },
  colors = {
    red = "#FF000", -- Override the red color for MAX POWER
    bg_alt = "#000000",
  },
  hlgroups = {
    TSPunctDelimiter = { fg = "${red}" }, -- Override a highlight group with the color red
    LspCodeLens = { bg = "#000000", style = "italic" },
  }
})

-- Load the configuration set above and apply the colorscheme
nightfox.load()
EOF

" NERDTree Control + F
nmap <C-f> :NERDTreeToggle<CR>
nmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" NERDTree open automatically
autocmd VimEnter * NERDTree

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Keybindings for split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" run prettier on save
let g:prettier#autoformat = 1
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

```
