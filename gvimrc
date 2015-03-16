" set the X11 font to use
set guifont=Source\ Code\ Pro\ Medium\ 12
set mousehide		" Hide the mouse when typing text

" Set nice colors
" background for normal text is light grey
" Text below the last line is darker grey
" Cursor is green, Cyan when ":lmap" mappings are active
" Constants are not underlined but have a slightly lighter background
highlight Normal guibg=grey90
highlight Cursor guibg=Green guifg=NONE
highlight lCursor guibg=Cyan guifg=NONE
highlight NonText guibg=grey80
highlight Constant gui=NONE guibg=grey95
highlight Special gui=NONE guibg=grey95

" GUI uses a light background
set background=light

" MacVim GUI mode
if has("gui_macvim")
  set guifont=Source\ Code\ Pro:h13
  set guioptions=aAce
  set fuoptions=maxvert,maxhorz
  set noballooneval
  set noeb vb t_vb=

  " resize current buffer by +/- 5
  nnoremap <M-Right> :vertical resize +5<CR>
  nnoremap <M-Left> :vertical resize -5<CR>
  nnoremap <M-Up> :resize -5<CR>
  nnoremap <M-Down> :resize +5<CR>

  " Command+Option+Right for next
  map <D-M-Right> :tabn<CR>
  " Command+Option+Left for previous
  map <D-M-Left> :tabp<CR>

  " Automatically resize splits when resizing MacVim window
  autocmd VimResized * wincmd =
endif
