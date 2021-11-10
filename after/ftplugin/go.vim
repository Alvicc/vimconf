call plug#begin(stdpath('data') . '/plugged')
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()
