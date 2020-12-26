call plug#begin('~/.vim/plugged')
" Plugin Section
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-surround'
Plug 'machakann/vim-highlightedyank'
Plug 'justinmk/vim-sneak'
Plug 'ryanoasis/vim-devicons'
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
set hidden
"set cmdheight=2
set updatetime=300
set ignorecase
set smartcase
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>
nnoremap <silent> <C-f> :Ag <C-R><C-W><CR>

" colorscheme
syntax enable
colorscheme onedark
set guifont=FiraCode_Nerd_Font:h14

" Nerdtree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMapActivateNode='4'

"FZF search
nnoremap <C-p> :Files<CR>
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Sneak
let g:sneak#s_next = 1
let g:sneak#label = 1
let g:sneak#use_ic_scs = 1

" COC Intellisense
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> gh :call <SID>show_documentation()<CR>
nmap <leader>rn <Plug>(coc-rename)


function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
