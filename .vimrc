set number

set tabstop=2
set shiftwidth=2
set encoding=utf-8

".c, .cpp, .hでタブ幅を4に変更
au BufNewFile,BufRead *.c    set nowrap tabstop=4 shiftwidth=4 noexpandtab
au BufNewFile,BufRead *.cpp  set nowrap tabstop=4 shiftwidth=4 noexpandtab
au BufNewFile,BufRead *.h    set nowrap tabstop=4 shiftwidth=4 noexpandtab
au BufNewFile,BufRead *.java set nowrap tabstop=4 shiftwidth=4
au BufNewFile,BufRead *.tex  set nowrap tabstop=4 shiftwidth=4
au BufNewFile,BufRead *.go   set nowrap tabstop=4 shiftwidth=4 noexpandtab
au BufNewFile,BufRead *.conf set nowrap tabstop=4 shiftwidth=4
au BufNewFile,BufRead *.html set nowrap tabstop=4 shiftwidth=4 noexpandtab
au BufNewFile,BufRead *.js set nowrap tabstop=4 shiftwidth=4

set autoindent
set incsearch
set expandtab
%retab
set wildmenu wildmode=list:full

syntax on
set hlsearch
filetype on
filetype indent on
filetype plugin on

"colorscheme molokai
colorscheme desert

if has('win32')
  " Windows用
  set guifont=MS_Gothic:h10:cSHIFTJIS
  "set guifont=MS_Mincho:h12:cSHIFTJIS
  " 行間隔の設定
  set linespace=1
  " 一部のUCS文字の幅を自動計測して決める
  if has('kaoriya')
    set ambiwidth=auto
  endif
elseif has('mac')
  set guifont=Osaka－等幅:h14
elseif has('xfontset')
  " UNIX用 (xfontsetを使用)
  set guifontset=a14,r14,k14
endif


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
      \ }
set laststatus=2

" http://qiita.com/creasty/items/30d1f0fc262f7c455d14
" 英数入力に自動で切り替える
if executable('osascript')
  let s:keycode_jis_eisuu = 102
  let g:force_alphanumeric_input_command = "osascript -e 'tell application \"System Events\" to key code " . s:keycode_jis_eisuu . "' &"

  inoremap <silent> <Esc> <Esc>:call system(g:force_alphanumeric_input_command)<CR>

  autocmd! FocusGained *
    \ call system(g:force_alphanumeric_input_command)
endif

" Conceal機能を無効化する
let g:tex_conceal=''
let g:vim_json_syntax_conceal = 0

" 分割した設定ファイルをすべて読み込む
set runtimepath+=~/.vim/
runtime! userautoload/*.vim
