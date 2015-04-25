" To open NERDTreeToggle
nmap <leader>n :NERDTreeToggle<CR>
nmap <silent>t :NERDTreeToggle<CR>

" Open the project tree and expose current file in the nerdtree with Ctrl-\
nnoremap <silent> <C-\> :NERDTreeFind<CR>:vertical res 30<CR>

" Make nerdtree look nice
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeMapOpenInTab = '\t'
let NERDTreeHighlightCursorline = 1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']
let NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 30
