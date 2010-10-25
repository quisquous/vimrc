" Needed on some linux distros.
" see http://www.adamlowe.me/2009/12/vim-destroys-all-other-rails-editors.html
filetype off 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

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
set hidden
set guioptions-=T
set guioptions-=m

set shortmess=atI
set scrolloff=3
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
let mapleader = ","

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

" DetectIndent plugin
set expandtab ts=4 sw=4
let g:detectindent_preferred_expandtab = 1
let g:detectindent_preferred_indent = 4
autocmd BufReadPost * :DetectIndent
autocmd BufEnter ?akefile* set noexpandtab ts=4 sw=4

" Fuzzy finder
map <leader>t :FuzzyFinderTextMate<CR>
let g:fuzzy_ceiling=50000
let g:fuzzy_ignore="*/out,*/.git,*/.svn,*/test,*/tests,*/LayoutTests,*/o3d,*/icu,*/native_client,*/chromeos,*/hunspell_dictionaries,*/ffmpeg,*/mesa,*/breakpad,*/build,*/data,*/layout-test-results"
command! -bang -narg=+ E :FuzzyFinderTextMate <args>
