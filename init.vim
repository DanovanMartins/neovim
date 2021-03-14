call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'w0rp/ale'
Plug 'cohama/lexima.vim'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'preservim/nerdtree'
Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'
Plug 'samoshkin/vim-mergetool'
Plug 'ntpeters/vim-better-whitespace'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
call plug#end()

set hidden

set number
set relativenumber

set foldmethod=syntax
set foldlevel=1

set mouse=a

set inccommand=split
set clipboard=unnamed

set expandtab
set shiftwidth=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" always show signcolumns
set colorcolumn=100
highlight ColorColumn ctermbg=0 guibg=lightgrey
set signcolumn=yes

set backspace=indent,eol,start " let backspace delete over lines
set autoindent " enable auto indentation of lines
set smartindent " allow vim to best-effort guess the indentation

set encoding=UTF-8

let mapleader="\<space>"

nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>

vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

nnoremap <c-b> :NERDTreeToggle<cr>


" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


"enable pt-br dictionary
nnoremap <c-d> :set spell spelllang=pt<cr>
nnoremap <leader>ns :set nospell<cr>

let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'


" Toogle git changes
nnoremap <leader>gs :SignifyToggle<cr>
nnoremap <leader>gS :SignifyToggleHighlight<cr>


" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'


" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1


" Jump though hunks
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)


"Git merge
let g:mergetool_layout = 'mr'
let g:mergetool_prefer_revision = 'local'


" unicode symbols
let g:airline_theme ='hybridline'
let g:airline_section_b = airline#section#create(['%{sy#repo#get_stats_decorated()}',' » ','%{fugitive#head()}'])
let g:airline_section_x = '%{strftime("%d/%m/%Y, %H:%M")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts=1
let g:airline_left_sep = '|'
let g:airline_right_sep = '|'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
set laststatus=2

highlight Comment cterm=italic gui=italic

set laststatus=2
" set showtabline=2

" c++11 support in syntastic
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'


let g:startify_files_number = 5
let g:startify_dir_number = 5
let g:startify_session_persistence = 1
let g:startify_change_to_dir = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

let g:NERDTreeGitStatusWithFlags = 1
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:NERDTreeColorMapCustom = {
"    \ "Staged"    : "#0ee375",
"    \ "Modified"  : "#d9bf91",
"    \ "Renamed"   : "#51C9FC",
"    \ "Untracked" : "#FCE77C",
"    \ "Unmerged"  : "#FC51E6",
"    \ "Dirty"     : "#FFBD61",
"    \ "Clean"     : "#87939A",
"    \ "Ignored"   : "#808080"
"    \ }


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

