set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/vundle'

" Plugin dependencies
Plugin 'kana/vim-textobj-user'
Plugin 'MarcWeber/vim-addon-mw-utils'

" Plugins with dependencies
Plugin 'garbas/vim-snipmate'
Plugin 'nelstrom/vim-textobj-rubyblock'

" Plugin bundles
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'itchyny/lightline.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'benmills/vim-golang-alternate'

" Language bundles
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'sunaku/vim-ruby-minitest'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-markdown'
Plugin 'vim-ruby/vim-ruby'
Plugin 'zah/nimrod.vim'
Plugin 'fasterthanlime/ooc.vim'

" Color Scheme
Plugin 'magicalbanana/vim-colors'

call vundle#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme mushroom

" Sets how many lines of history VIM has to remember
set history=1000

" Enable filetype plugins
filetype plugin indent on
" Set to auto read when the file is changed outside of VIM (helpful since I
" hybrid between VIM and Sublime
set autoread

" With this map leader setup it is possible for me to add key combinations
" like <leader>w saves the current file
let mapleader=","
let g:mapleader=","

" Fast Saving
nmap <leader>w :w!<cr>

" Searching in Visual Mode
vmap <leader>r "sy:%s/<C-R>=substitute(@s,"\n",'\\n','g')<CR>/
vmap <Leader>c "sy:%s/<C-R>=substitute(@s,"\n",'\\n','g')<CR>//n<CR>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /

" Searching and replacing
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

" Configure backspace so it should work the way it's supposed to
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set hidden
set cursorline
set modelines=3
set shiftwidth=2
set clipboard=unnamed,unnamedplus
set synmaxcol=256
set ttyscroll=3
set ttyfast
set encoding=utf-8 termencoding=utf-8
set tabstop=2
set nowrap
set number
set expandtab
set nowritebackup
set noswapfile
set nobackup
set ignorecase
set smartcase
set lazyredraw
set splitright
set scrolloff=4
set sidescroll=1
set sidescrolloff=1
set noshowmode
set list listchars=tab:▸\ ,trail:·,extends:>,precedes:<
set omnifunc=syntaxcomplete#Complete
set mouse=a

" Disable preview window
set completeopt-=preview

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Vim annoyances
" http://blog.sanctum.geek.nz/vim-annoyances/
vnoremap u y
nnoremap U <C-r>
nnoremap Q <nop>
nnoremap K <nop>
nnoremap J mzJ`z
nnoremap Y y$
inoremap jk <Esc>
inoremap JK <Esc>
inoremap Jk <Esc>
inoremap jK <Esc>

nnoremap <silent> <F5> :set paste!<CR>

set shortmess+=I
set virtualedit=block

" Disable cursor line in insert mode
au InsertEnter * set nocursorline
au InsertLeave * set cursorline nopaste

" Automatic formatting
function! <SID>StripTrailingSpace()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

autocmd BufWritePre *.rb,*.js,*.coffee :call <SID>StripTrailingSpace()
autocmd BufWritePre *.scss,*.haml,*.slim,*.html,*.builder :call <SID>StripTrailingSpace()
autocmd BufWritePre *.txt,*.md,*.markdown :call <SID>StripTrailingSpace()

au BufNewFile * set noeol

" No show command
autocmd VimEnter * set nosc

" Quick ESC
imap jj <ESC>

" Jump to the next row on long lines
map <Down> gj
map <Up>   gk
nnoremap j gj
nnoremap k gk

" format the entire file
nmap <leader>fef ggVG=

" Open new buffers
nmap <leader>s<left>   :leftabove  vnew<cr>
nmap <leader>s<right>  :rightbelow vnew<cr>
nmap <leader>s<up>     :leftabove  new<cr>
nmap <leader>s<down>   :rightbelow new<cr>

" Tab between buffers
noremap <tab> <c-w>w
noremap <S-tab> <c-w>W

" Switch between last two buffers
nnoremap <leader><leader> <C-^>

" Resize buffers
"if bufwinnr(1)
"  nmap Ä <C-W><<C-W><
"  nmap Ö <C-W>><C-W>>
"  nmap ö <C-W>-<C-W>-
"  nmap ä <C-W>+<C-W>+
"endif

" NERDTree
nmap <leader>n :NERDTreeToggle<CR>

let NERDTreeMapOpenInTab='\t'
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore= ['tmp', '.yardoc', 'pkg']
let NERDTreeShowHidden=1

" SuperTab
let g:SuperTabDefaultCompletionType = "context"

" CtrlP
nnoremap <silent> t :CtrlP<cr>
nnoremap <silent><leader>t :CtrlP<cr>
"nnoremap <silent><leader>r :CtrlPMRUFiles<cr>

let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0

let g:ctrlp_working_path_mode = 2
let g:ctrlp_by_filename = 0
let g:ctrlp_max_files = 512
let g:ctrlp_max_depth = 6
let g:ctrlp_root_markers = ['.git']
let g:ctrlp_user_command = {
  \ 'types': { 1: ['.git/', 'cd %s && git ls-files --cached --exclude-standard --others | grep -v _workspace | grep -v private_gems'] },
  \ 'fallback': 'ack -f %s --ignore-dir=.git | head -' . g:ctrlp_max_files
  \ }

" Quit with :Q
command -nargs=0 Quit :qa!
