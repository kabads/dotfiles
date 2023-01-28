set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" alternatively, pass a path where Vundle should install plugins
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Plugin 'pedrohdz/vim-yaml-folds'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'lifepillar/vim-solarized8'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'tpope/vim-fugitive'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'bitc/vim-bad-whitespace'
Plugin 'Yggdroot/indentLine'
Plugin 'dense-analysis/ale'
"* ...
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on
set ruler
syntax enable
set background=dark
colorscheme solarized8

" Enable folding
set foldmethod=indent
set foldlevel=99
au BufNewFile,BufRead *.py
            \ set tabstop=4 |
            \ set softtabstop=4 |
            \ set shiftwidth=4 |
            \ set textwidth=79 |
            \ set expandtab |
            \ set autoindent |
            \ set fileformat=unix

" Show whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

set relativenumber
set number
" enable all Python syntax highlighting features
" let python_highlight_all = 1
" let g:solarized_termcolors=256
set backspace=indent,eol,start


function! DoPrettyXML()
  " save the filetype so we can restore it later
  let l:origft = &ft
  set ft=
  " delete the xml header if it exists. This will
  " permit us to surround the document with fake tags
  " without creating invalid xml.
  1s/<?xml .*?>//e
  " insert fake tags around the entire document.
  " This will permit us to pretty-format excerpts of
  " XML that may contain multiple top-level elements.
  0put ='<PrettyXML>'
  $put ='</PrettyXML>'
  silent %!xmllint --format -
  " xmllint will insert an <?xml?> header. it's easy enough to delete
  " if you don't want it.
  " delete the fake tags
  2d
  $d
  " restore the 'normal' indentation, which is one extra level
  " too deep due to the extra tags we wrapped around the document.
  silent %<
  " back to home
  1
  " restore the filetype
  exe "set ft=" . l:origft
endfunction
command! PrettyXML call DoPrettyXML()
" set rtp+=/Users/adam/.pyenv/versions/3.8.13/lib/python3.8/site-package/powerline/bindings/vim
set laststatus=2
function! GitBranch()
  return trim(system("git branch | awk '/^* /{print $2}'"))
endfunction



set autoindent             " Respect indentation when starting a new line.
set expandtab              " Expand tabs to spaces. Essential in Python.
set tabstop=4              " Number of spaces tab is counted for.
set shiftwidth=4           " Number of spaces to use for autoindent.

set backspace=2            " Fix backspace behavior on most terminals.

set directory=$HOME/.vim/swap//
" Set up persistent undo across all files.
set undofile
set undodir=~/.vim/undodir
" function! StatusLineGit()
"   let l:branchname = GitBranch()
"   return strlen(l:branchname) > 0?' '.l:branchname.' ':''
" endfunction
set statusline=
" set statusline+=%{StatusLineGit()}
set statusline+=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\ TIME:\ %{strftime('%H:%M')}
nnoremap <C-p> :Files <CR>
nnoremap <C-b> :Buffers <CR>
let g:indentLine_char = '⦙'
set foldlevelstart=20
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'
