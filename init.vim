" Line numbers
let mapleader=','

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
set relativenumber
set laststatus=2
set whichwrap+=<,>,h,l,[,]
set smartcase
set smartindent
set noswapfile
set hidden
set shiftwidth=4
set expandtab
set omnifunc=syntaxcomplete

" Plugins
call plug#begin(stdpath('data') . '/plugged')
Plug 'cespare/vim-toml'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'machakann/vim-highlightedyank'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug ''
"
call plug#end()


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

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" UltSnip
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" deoplete
let g:deoplete#enable_at_startup = 1

nmap <C-p> :FZF<cr>
