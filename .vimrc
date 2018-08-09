" Set leader key to space
let mapleader=" "

" Show line numbers
set number
set ruler

" Show whitespace as visible characters
set list
set listchars=space:·,tab:\|─

" Use spaces instead of tabs and tabwidth of 4
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Disable text wrapping as default
set nowrap

" Enable auto indent
set autoindent

" Only redraw once macros have finished instead of at each step
set lazyredraw

" Get colours to work when in tmux
set t_Co=256
execute "set t_8f=\e[38;2;%lu;%lu;%lum"
execute "set t_8b=\e[48;2;%lu;%lu;%lum"
set termguicolors

" Colour settings
set background=dark
let g:gruvbox_termcolors=256
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_sign_column='bg0'
colors gruvbox

" Always show the sign column (jumps annoyingly otherwise)
set signcolumn=yes

" Statusline settings
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#tab_nr_type=2
let g:airline#extensions#tabline#show_tab_nr=1
let g:airline#extensions#whitespace#mixed_indent_algo=1
let g:airline#extensions#tmuxline#enabled=0

" Always show the tab bar
set showtabline=2

" Look for phpcs in project
if filereadable("./core/vendor/bin/phpcs")
    let g:ale_php_phpcs_executable="./core/vendor/bin/phpcs"
elseif filereadable("./vendor/bin/phpcs")
    let g:ale_php_phpcs_executable="./vendor/bin/phpcs"
else
    let g:ale_php_phpcs_executable=""
endif

let g:ale_php_phpcs_standard='./ruleset.xml'

" highlight col 120 to show long lines
set colorcolumn=121
hi ColorColumn ctermbg=23

" Easier tab switching
map <leader>tl gt
map <leader>th gT

" Add helpers to move lines up or down
nnoremap <C-j> :m +1<CR>==
nnoremap <C-k> :m -2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Use tree view in netrw by default
let g:netrw_liststyle=3

" phpdoc comment generator
let g:pdv_template_dir = $HOME . "/.vim/pack/default/start/pdv/templates_snip"
map <leader>pd :call pdv#DocumentWithSnip()<CR>

" jsdoc comment generator
let g:jsdoc_enable_es6 = 1
let g:jsdoc_tags = {}
let g:jsdoc_tags["returns"] = "return"
map <leader>jd :call jsdoc#insert()<CR>

" Good highlighting for JavaScript and JSX
let g:javascript_plugin_jsdoc=1
