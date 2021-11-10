call plug#begin(stdpath('data') . '/plugged')
    Plug 'stevearc/vim-arduino'
call plug#end()

let g:syntastic_arduino_checkers = ['syntastic-c-avrgcc']
