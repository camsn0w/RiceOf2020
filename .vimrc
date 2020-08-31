set nocompatible
"filetype off
filetype on
"filetype plugin indent on
set t_Co=256

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'vim-scripts/CmdlineComplete'
"Plugin 'ycm-core/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'ctrlpvim/ctrlp.vim'
"Plugin 'ap/vim-buftabline'
Plug 'arcticicestudio/nord-vim'
Plug 'gko/vim-coloresque'
call plug#end()

"Rainbow stuff
let g:rainbow_active = 1

"Powerline stuff:
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set t_Co=256
"End Powerline stuff
"Get ycm to stop harassing me
"let g:ycm_confirm_extra_conf=0
"let g:coc_disable_startup_warning=1
set noshowmatch


"Utilisnips
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"




"nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>

set relativenumber
set history=1000         
set undolevels=1000      
set tabstop=4
set backspace=indent,eol,start
set hidden
syntax on
set smartindent
set shiftwidth=4
set expandtab
colorscheme molokai
let g:mapleader="<space>"

set incsearch
set cursorcolumn
nnoremap <C-N> :NERDTreeToggle<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"Run code in vim:
autocmd FileType python nnoremap <C-k> :!python %
autocmd FileType scheme nnoremap <C-k> :!chicken-csi %
autocmd FileType cpp nnoremap <C-k> :make && ./%:r 
autocmd FileType c nnoremap <C-k> :make && ./%:r 
"noremap <leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

