execute pathogen#infect()

syntax on

filetype plugin on
filetype plugin indent on

" Essentials
set nocompatible  " vim settings, not vi
set number        " prefix line numbers
set ruler         " show cursor position on last line/status window
set showcmd       " show last commands on last line
set showmode      " show mode at bottom
set showmatch     " Show matching brackets with text indicator is over them
set cursorline    " highlight/underline current line where cursor is
set showmatch     " highlight matching tags -> [{()}]
set incsearch     " incremental search (searches actively as you type)
set hlsearch      " highlight search matches
set ignorecase    " case insensitive search...
set smartcase     " case sensitive search (only if capital letters entered)
set confirm       " confirm unsaved changes rather than erroring out
set scrolloff=5   " keep 5 context lines above/below cursor line
set encoding=utf8 " Sets utf8 as standard encoding
set history=500   " VIM remembers 500 lines

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

" set default tabbing behavior
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Solaried color scheme, because solarized is <3
"set background=light
"colorscheme solarized

" vim-indent-guides configs
"let g:indent_guides_enable_on_vim_startup=1
"let g:indent_guides_guide_size=1
"let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=30
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=48

" vim-fugitive configs (git commands)
:nnoremap <leader>gs :Gstatus<CR>
:nnoremap <leader>gd :Gdiff<CR>
:nnoremap <leader>gc :Gcommit<CR>
:nnoremap <leader>gmv :Gmove<CR>
:nnoremap <leader>grm :Gdelete<CR>

" NERDTree configs
" ----------------
" autocmd vimenter * NERDTree     " Start NERDTree when entering vim
let NERDTreeQuitOnOpen=1      " quit NERDTree when opening file
let NERDTreeShowHidden=1      " show hidden files/dirs
let NERDTreeMinimalUI=1       " hide help menu
let g:NERDTreeWinSize=30      " limit NERDTree window to 20 chars
:nnoremap <leader>t :NERDTreeToggle<CR>     " toggle NERDTree with leader+t

" NERDCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
