" Line numbers
let mapleader=' '

" Crusor to a block
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

syntax enable
filetype plugin indent on
colorscheme monokai

set number
set cursorline
set mouse=a
set tabstop=4
set colorcolumn=80
" set relativenumber
set laststatus=2
set whichwrap+=<,>,h,l,[,]
set smartcase
set smartindent
set noswapfile
set hidden
set shiftwidth=4
set expandtab
" set omnifunc=ale#completion#OmniFunc

let g:ale_completion_enabled = 0
let g:ale_set_balloons = 1
set completeopt="menu,menuone,popup,noselect,noinsert"

" let g:syntastic_c_check_header = 1
" let g:syntastic_c_include_dirs = ["../include","include", "../Inc"]

"Plugins
call plug#begin(stdpath('data') . '/plugged')
Plug 'cespare/vim-toml'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'machakann/vim-highlightedyank'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'Shougo/echodoc'
Plug 'vim-syntastic/syntastic'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
" Plug ''
call plug#end()

let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('sources', {
\ '_': ['ale'],
\})

set cmdheight=2
let g:echodoc_enable_at_startup = 1
" let g:echodoc#type = 'floating'
" let g:echodoc#type = 'virtual'
    

" Remap ESC to exit terminal mode
if has('nvim')
    tnoremap <Esc> <C-\><C-n>
endif


" " -----------------------------------------------------------------------------
"     - Resizing panes -
" -----------------------------------------------------------------------------
nmap <C-h> :vertical resize -4<CR>
nmap <C-l> :vertical resize +4<CR>
nmap <C-k> :resize +4<CR>
nmap <C-j> :resize -4<CR>

" Hides search highlight
nmap <leader>h :noh <CR>

" Airline theme
let g:airline_theme='powerlineish'

" UltSnip
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

nmap <C-p> :Ag<cr>
nmap <C-f> :FZF<cr>

" ALE bindings
nnoremap <leader>gd :ALEGoToDefinition<CR>
nnoremap <leader>gf :ALEFindReferences<CR>
nnoremap <leader>gh :ALEHover<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
