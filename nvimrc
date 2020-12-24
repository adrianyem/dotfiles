call plug#begin('~/.vim/plugged')
" Plugin Section
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'christoomey/vim-tmux-navigator'
Plug 'dracula/vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'tpope/vim-commentary'
call plug#end()

" basic
let g:mapleader = "\<space>"
imap jk <Esc>
nmap <leader>so :source $MYVIMRC<cr>
set number relativenumber
set autoindent
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set smarttab
set timeoutlen=1000 ttimeoutlen=0 " elimiate delays for esc keys

" colorscheme
syntax enable
colorscheme dracula

" Nerdtree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"FZF search
nnoremap <C-p> :Files<CR>
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" COC Intellisense
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
