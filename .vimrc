set number
set tabstop=2
"set tabstop=8
set shiftwidth=2
set autoindent
set incsearch
set expandtab
%retab
set wildmenu wildmode=list:full

syntax on
set hlsearch
"colorscheme molokai
colorscheme desert
"colorscheme ap_dark8

filetype on
filetype indent on
filetype plugin on

inoremap {} {}<LEFT>
inoremap [] []<LEFT>
inoremap () ()<LEFT>
inoremap "" ""<LEFT>
inoremap '' ''<LEFT>
inoremap <> <><LEFT>

nnoremap j gj
nnoremap gk gk

" インサートモードからコマンドモードへ
inoremap <C-c> <Esc>
" インサートモードでカーソルを左へ移動
inoremap <C-h> <Esc>i
" インサートモードでカーソルを右へ移動
inoremap <C-l> <Esc><Right>a

highlight JpSpace cterm=underline ctermfg=Blue guifg=Blue
au BufRead,BufNew * match JpSpace /　/

nmap bb :ls<CR>:buf 

"日本語の行の連結時には空白を入力しない。
set formatoptions+=mM

"□や○の文字があってもカーソル位置がずれないようにする。
set ambiwidth=double

"画面最後の行をできる限り表示する。
set display+=lastline

" インサートモード時にバックスペースを使う
set backspace=indent,eol,start

" https://github.com/itchyny/lightline.vim
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"⭤":""}',
      \ }
      \ }
set laststatus=2

" 分割した設定ファイルをすべて読み込む
set runtimepath+=~/.vim/
runtime! userautoload/*.vim
