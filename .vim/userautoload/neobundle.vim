"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

NeoBundle 'Shougo/neocomplcache'
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'othree/html5.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'L9'
NeoBundle 'rails.vim'

NeoBundle 'elzr/vim-json'
" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
