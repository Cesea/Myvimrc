set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

filetype off
set rtp+=~/.vim
set rtp+=~/.vim/bundle/Vundle.vim

"Install Plugin
call vundle#begin('~/.vim/bundle')

Plugin 'VundleVim/Vundle.vim'
"Color scheme sloarized
Plugin 'altercation/vim-colors-solarized'
"Nerd Tree
Plugin 'scrooloose/nerdtree'
"YouCompleteMe
"Plugin 'valloric/youcompleteme'
"ycm_extra_config.py Generator
"Plugin 'rdnetto/ycm-generator'
"SuperTab
Plugin 'ervandew/supertab'

call vundle#end()
filetype plugin indent on

"YCM Settings
"let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf = 0
"To avoid conflict snippets
"let g:ycm_autoclose_preview_window_after_completion = 1

"Set Color Scheme
colorscheme solarized

"Set syntax highliging
if has ("syntax")
	syntax on
endif

"Match
"match ErrorMsg :^//TODO.\+:



"No BackUp
set nobackup
set nowritebackup

"Setting the font
"Change font when txt file loaded
"autocmd BufEnter *.txt set guifont=Consolas:h14:b
set guifont=Consolas:h12:b

"Set Indenting
set autoindent
set cindent
set smartindent

set ruler

"Set tab spacing
set tabstop=4
set shiftwidth=4



""""""""REMAPS KEYS
"HyerLink Remap
nmap <buffer> <CR> <C-]>
nmap <buffer> <BS> <C-T>
"Tab
nmap tn :tabnext<CR>
nmap <C-t> :tabnew<CR>
nmap tc :tabclose<CR>

"Build with bat file
nmap <A-m> :tabnext<CR>abuild<CR>kj

"Esc key remap
inoremap kj <Esc>
vnoremap kj <Esc>
"Remap Buffer navigation
map <C-k> <ESC>:bn<CR>
map <C-j> <ESC>:bp<CR>
"Remap gf key to not bother to save and create
map gf :w<CR> :edit <cfile><CR>

"Show line number
set number
set numberwidth=5

"Show Current Line
set cursorline

"Enhance stauts bar description
set laststatus=2
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

"Differ the case when searcinh
"set smartcase

let mapleader=","
set clipboard=unnamed

"Opens NerdTree
autocmd vimenter * NERDTree
"Toggle NerdTree
map <C-n> :NERDTreeToggle<CR>


"map love2d Start
"map <C-s> 


"Set Menu and tool Disapear
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

"Set NoWrap
set nowrap

"Open gvim fullScreen mode
au GUIEnter * simalt ~x

"set diffexpr=MyDiff()
"function MyDiff()
"  let opt = '-a --binary '
"  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
""  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"  let arg1 = v:fname_in
"  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"  let arg2 = v:fname_new
"  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"  let arg3 = v:fname_out
"  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"  let eq = ''
"  if $VIMRUNTIME =~ ' '
"    if &sh =~ '\<cmd'
"      let cmd = '""' . $VIMRUNTIME . '\diff"'
"      let eq = '"'
"    else
"      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"    endif
"  else
"    let cmd = $VIMRUNTIME . '\diff'
"  endif
"  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"endfunction
