" my .vimrc
set nocompatible
filetype off
set number relativenumber
set backspace=indent,eol,start
set hlsearch
set incsearch
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
inoremap jj <ESC>
call plug#begin('~/.vim/plugged')
" ... your other plugins

Plug 'https://gitlab.com/code-stats/code-stats-vim.git'

" Optional: If you want a nice status line in Vim
Plug 'vim-airline/vim-airline'
Plug 'lervag/vimtex'

call plug#end()
" REQUIRED: set your API key
let g:codestats_api_key = 'SFMyNTY.YzJGd2FXVnVhVzVxWVE9PSMjTVRNNE1qTT0._xU00YBWQDNj5EgIkpp8TjQfs6QZzBYG8pq5Kj-12Rs'

" Optional: configure vim-airline to display status
let g:airline_section_x = airline#section#create_right(['tagbar', 'filetype', '%{CodeStatsXp()}'])

:noremap <F4> :set hlsearch! hlsearch?<CR>
nnoremap <SPACE> <Nop>
nnoremap <leader> q: wq!<CR>
noremap <C-n> :NERDTreeToggle<CR>
let mapleader = " "
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

let python_highlight_all=1
syntax on
filetype indent plugin on
" Enable folding
set encoding=utf-8
set comments=:#
let g:ycm_autoclose_preview_window_after_completion=1
let g:vimspector_enable_mappings = 'human'
let g:vimsence_editing_details = 'Crying at: {}'
"Configuration options for LaTeX document editing
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:matchup_override_vimtex = 1
set conceallevel=2
let g:tex_conceal='abdmgs'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
map <leader>d :YcmCompleter GetDoc<CR>
map <leader>o :only<CR>
set undofile
set undodir=~/.vim/undodir
"abbreviations for simple text issues
:abbreviate teh the
:abbreviate prnt print
:abbreviate ot to
:abbreviate het the
:abbreviate hte the
hi clear Conceal
