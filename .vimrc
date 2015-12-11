execute pathogen#infect()
syntax on
filetype plugin indent on

autocmd Filetype ruby call SetTwoSoftSpacesOptions()
autocmd Filetype javascript call SetTwoSoftSpacesOptions()
autocmd Filetype css call SetTwoSoftSpacesOptions()

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set backspace=indent,eol,start

function SetTwoSoftSpacesOptions()
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
  set expandtab
endfunction

set cursorline
set cursorcolumn

autocmd InsertLeave * :set cursorline
autocmd InsertLeave * :set cursorcolumn

autocmd InsertEnter * :set nocursorline
autocmd InsertEnter * :set nocursorcolumn

set number 
set relativenumber
