" google config
syntax on 
if filereadable("/usr/share/vim/google/google.vim")
   source /usr/share/vim/google/google.vim
endif

" Backups (from https://wiki.corp.google.com/twiki/bin/view/Main/VimEditor)
set directory=$HOME/.vimbak
set backup writebackup
set backupdir=$HOME/.vimbak
set backupskip=/tmp/*,/var/tmp/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set history=200          " Store last 200 commands as history.
" Store in .viminfo: marks for 50 files, 200 lines of registers.
set viminfo='50,\"200
set updatecount=40       " Number of characters typed before updating swapfile.
set updatetime=1000      " Milliseconds before updating swapfile.
set suffixes=.bak,~,.o,.swp

" enne config
colorscheme desert
set numberwidth=5
set lines=60
" 80 + numberwidth
set columns=85

set showmode
set showmatch
set ruler
set showcmd
set incsearch
set hlsearch
set backspace=2
set number
set ignorecase
set smartcase
set guioptions-=T
set guioptions-=m

" MiniBufExplorer plugin
"   let ctrl+hjkl swap windows
let g:miniBufExplMapWindowNavVim = 1
"   let ctrl+tab swap buffers
let g:miniBufExplMapCTabSwitchBufs = 1

" ctags
set tags=./tags;/

" taglist plugin
let g:Tlist_Auto_Open = 1
let g:Tlist_Exit_OnlyWindow =1
let g:Tlist_File_Fold_Auto_Close = 1
