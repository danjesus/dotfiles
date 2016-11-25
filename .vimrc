execute pathogen#infect()
set nocompatible

set backspace=2
syntax on
filetype off
filetype indent on

set hlsearch

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

autocmd FileType ruby set tabstop=2
autocmd FileType ruby set shiftwidth=2
autocmd FileType ruby set softtabstop=2

autocmd FileType javascript set sw=4
autocmd FileType javascript set ts=4
autocmd FileType javascript set sts=4

autocmd Filetype gitcommit setlocal spell textwidth=72

set number
set ruler
set nolist

map <C-n> :NERDTreeTabsToggle<CR>

nnoremap <Leader>s :nohlsearch<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


autocmd FileType php set omnifunc=phpcomplete#CompletePHP
inoremap <Nul> <C-x><C-o>

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

let g:typescript_indent_disable = 1
set fillchars=""
hi vertsplit guifg=fg guibg=bg
hi! VertSplit ctermfg=black ctermbg=black term=NONE

"vim splits shortcuts
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

noremap <Leader>r :call <SID>RunNpmTests()<CR>
function! s:RunNpmTests()
    silent! exec "!tmux select-pane -l && tmux send up enter && tmux select-pane -l"
    redraw!
endfunction

"removes trailing spaces
function TrimWhiteSpace()
    %s/\s*$//
    ''
endfunction

let g:solarized_termcolors=256

if has('gui_running')
    set background=dark
    colorscheme solarized
endif

set list listchars=trail:.,extends:>
autocmd FileWritePre * call TrimWhiteSpace()
autocmd FileAppendPre * call TrimWhiteSpace()
autocmd FilterWritePre * call TrimWhiteSpace()
autocmd BufWritePre * call TrimWhiteSpace()

let g:tmuxline_preset = 'tmux'
let g:tmuxline_powerline_separators = 0
let g:airline#extensions#tabline#enabled = 1
