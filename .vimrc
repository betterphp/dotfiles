" space leader is the best leader
let mapleader = " "

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

" Colourscheme settings
set t_Co=256
execute "set t_8f=\e[38;2;%lu;%lu;%lum"
execute "set t_8b=\e[48;2;%lu;%lu;%lum"

set termguicolors
set background=dark

let g:gruvbox_termcolors=256
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_sign_column='bg0'

colors gruvbox

" always show the sign column (jumps annoyingly otherwise)
set signcolumn=yes

" Statusline settings
set laststatus=2

" Always show the tab bar
set showtabline=2

" ALE highlights are annoying and seem slow
" let g:ale_set_highlights = 0

" If we have phpcs in the project, use it
if filereadable("./core/vendor/bin/phpcs")
    let g:ale_php_phpcs_executable="./core/vendor/bin/phpcs"
elseif filereadable("./vendor/bin/phpcs")
    let g:ale_php_phpcs_executable="./vendor/bin/phpcs"
else
    let g:ale_php_phpcs_executable=""
endif

let g:ale_php_phpcs_standard='./ruleset.xml'

" highlight col 80 to show long lines
set colorcolumn=81,121
hi ColorColumn ctermbg=23

map <leader>tl gt
map <leader>th gT
