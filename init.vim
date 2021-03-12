call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ncm2/ncm2'
Plug 'w0rp/ale'
Plug 'cohama/lexima.vim'
Plug 'mhinz/vim-startify'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

set hidden

set number
set relativenumber

set mouse=a

set inccommand=split
set clipboard=unnamed

set expandtab
set shiftwidth=2

let mapleader="\<space>"

nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>

let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'''
let g:startify_custom_header = [
  \'',
  \'',
  \'',
  \'',
  \'',
  \'',
  \'',
  \'',
  \]
let g:startify_bookmarks = [
  \ '~/.config/nvim/init.vim',
  \ '~/.bashrc',
  \ ]

let g:startify_list_order = [
    \ ['   My most recently:'],
    \ 'files',
    \ ['   Sessions:'],
    \ 'sessions',
    \ ['   Current Dir:'],
    \ 'dir',
    \ ['   These are my bookmarks:'],
    \ 'bookmarks',
    \ ]

let g:startify_files_number = 5
let g:startify_dir_number = 5
let g:startify_session_persistence = 1
let g:startify_change_to_dir = 1

