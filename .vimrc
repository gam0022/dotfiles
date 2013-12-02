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

filetype on
filetype indent on
filetype plugin on

" カッコの入力の後に左にカーソルを動かす
inoremap {} {}<LEFT>
inoremap [] []<LEFT>
inoremap () ()<LEFT>
inoremap "" ""<LEFT>
inoremap '' ''<LEFT>
inoremap <> <><LEFT>

" MacVim用
nnoremap j gj
nnoremap k gk

" vimでハードタブ（タブ文字）とか全角スペースの表示
highlight JpSpace cterm=underline ctermfg=Blue guifg=Blue
au BufRead,BufNew * match JpSpace /　/

"□や○の文字があってもカーソル位置がずれないようにする。
set ambiwidth=double

" バッファの一覧を表示
nmap bb :ls<CR>:buf 

"日本語の行の連結時には空白を入力しない。
set formatoptions+=mM

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
