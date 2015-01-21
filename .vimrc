call pathogen#infect()
set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
set background=dark
set hlsearch
set autoindent
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  set fileencodings=ucs-bom,utf-8,latin1
endif

if argc() == 0
  autocmd VimEnter * NERDTree
else
  autocmd VimEnter NERDTree | wincmd w
endif
autocmd BufEnter * NERDTreeMirror

let NERDTreeIgnore=['\.pyc$', '\.o$']
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

au BufRead,BufNewFile *.thrift set filetype=thrift
au! Syntax thrift source ~/.vim/syntax/thrift.vim

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
