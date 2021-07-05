call plug#begin(stdpath('data') . '/plugged')
    Plug 'rust-lang/rust.vim'
" Plug 'racer-rust/vim-racer'
call plug#end()


" rustfmt on save
let g:rustfmt_autosave = 1

" Build on F5
nmap <f5> :!cargo run<CR>
nmap <f6> :!cargo test<CR>

nnoremap <leader>gd :ALEGoToDefinition<CR>

