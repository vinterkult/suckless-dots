if (has("termguicolors"))
set termguicolors
endif
syntax enable
colorscheme twilight256
" let g:airline_theme = 'tender'
set number
" set relativenumber
set wildmenu
set wildmode=longest:full,full
" let mapleader = " " " map leader to Space
let mapleader = "," " map leader to comma
let NERDTreeShowHidden=1
let g:Hexokinase_highlighters = [ 'virtual' ]
let g:calendar_week_number = 1
" Vim Wiki
let g:vimwiki_list = [{'auto_diary_index': 1}]
nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-c> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <c-p> :files<CR>
nnoremap <Leader>a :Ag <C-R><C-W><CR>:cw<CR>
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fl <cmd>Telescope git_files<cr>

" tabs
" next tab
nnoremap <C-n> :tabn<cr>
" new tab
nnoremap <C-t> :tabnew<cr>
" close tab
nnoremap <C-x> :tabc<cr>
call plug#begin("~/.config/nvim/plugged")
" Plug 'itchyny/calendar.vim'
" Plug 'vim-scripts/FuzzyFinder'
" Use release branch (recommend)
Plug 'chrisbra/vim-commentary'
Plug 'epmatsw/ag.vim'
Plug 'jacoborus/tender.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/calendar-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'savq/melange'
Plug 'scrooloose/nerdtree'
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'vimwiki/vimwiki'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'jaredgorski/spacecamp'
Plug 'nekonako/xresources-nvim'
call plug#end()
