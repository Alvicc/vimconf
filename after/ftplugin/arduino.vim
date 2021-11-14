call plug#begin(stdpath('data') . '/plugged')
    Plug 'stevearc/vim-arduino'
call plug#end()

let g:ale_linter_aliases = {'arduino': 'c'}
let g:ale_c_cc_autoinclude_source_dir = 1
let g:ale_c_parse_makefile = 0
