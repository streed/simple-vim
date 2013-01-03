call pathogen#infect()
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

let NERDTreeIgnore=['\.pyc$']
