set nocompatible

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'morhetz/gruvbox'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()

execute pathogen#infect()

" General
" =======

" Display line numbers
set number

" Display visual limit to 80 characters for readability
set colorcolumn=81

" Set tab keystroke to 4 spaces
set expandtab

" Make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

" Activate syntax highlighting
syntax on

" Some stuff to get the mouse going in term
set mouse=a
if !has("nvim")
    set ttymouse=xterm2
endif

" Display tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

" Can't remember
command W w !sudo tee % > /dev/null
set splitbelow
set splitright
set showmatch
set hlsearch
set acd
set tabstop=4
"filetype plugin indent on
iabbrev teh the

" Tell the term has 256 colors
set t_Co=256
set background=dark
colorscheme gruvbox

" Plugins
" =======

" EasyAlign
" --------

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Markdown
" --------
"

set nofoldenable

" Rainbow parens
" --------------
"

" Activate
autocmd syntax clojure call s:ActivateRainbowParens()
function s:ActivateRainbowParens() abort
    RainbowParenthesesToggle
    RainbowParenthesesLoadRound
    RainbowParenthesesLoadSquare
    RainbowParenthesesLoadBraces
endfunction
