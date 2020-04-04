"Jason's vimrc

set encoding=utf-8

scriptencoding UTF-8
filetype off

call plug#begin()

"NerdTree
Plug 'scrooloose/nerdtree'
"NerdTree for git
Plug 'Xuyuanp/nerdtree-git-plugin'
"NerdTree with tab
Plug 'jistr/vim-nerdtree-tabs'
"Emmet
Plug 'mattn/emmet-vim'
"Tabular
Plug 'godlygeek/tabular'
"Rename
Plug 'danro/rename.vim'
"Git wrapper
Plug 'tpope/vim-fugitive'
"airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Soloarized
"Plug 'altercation/vim-colors-solarized'
"vim misc
Plug 'xolox/vim-misc'
"easy tags
Plug 'xolox/vim-easytags'
"vim shell
Plug 'xolox/vim-shell'
"tagbar
Plug 'majutsushi/tagbar'
"swift
Plug 'keith/swift.vim'
"Completor
Plug 'maralla/completor.vim'
"ALE
Plug 'w0rp/ale'
"Tern
Plug 'ternjs/tern_for_vim'
"Snips
"Plug 'SirVer/ultisnips' ---Commented. used for python.
Plug 'honza/vim-snippets'
"Rooter
Plug 'airblade/vim-rooter'
"You Complete Me
"Commented for TabNine
"Plug 'Valloric/YouCompleteMe'
"Theme
Plug 'morhetz/gruvbox'
"autoclose
Plug 'Raimondi/delimitMate'
"indent
"Plug 'Yggdroot/indentLine'
"a.vim
Plug 'vim-scripts/a.vim'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'docunext/closetag.vim'
Plug 'rhysd/vim-grammarous'
Plug 'zxqfl/tabnine-vim'
Plug 'vim-latex/vim-latex'
call plug#end()            " required
filetype plugin indent on    " required

"java completor
autocmd FileType java setlocal omnifunc=javacomplete#Complete

"NERDTree Related
let g:NERDTreeIgnore=['\~$', '\.class$']

"air-line configuration
let g:airline#extensions#tabline#enabled = 0
let g:airline_powerline_fonts = 1

"Completor Configuration
let g:completor_clang_binary = '/usr/bin/clang'
let g:completor_java_omni_trigger = "\w+$|[\w\)\]\}\\\'\"]+\.\w*$"

let g:javascript_plugin_jsdoc = 1
"let indent start automatically
"let g:indent_guides_enable_on_vim_startup = 1
let g:closetag_html_style=1
"Tagbar
map <C-n> :TagbarToggle<CR>
autocmd FileType markdown let g:indentLine_enabled=0
autocmd FileType latex setlocal g:indentLine_enabled = 0

"Other changes
set number
syntax on
set linespace=5
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set backspace=2
set nobackup
set ruler
set background=dark
colorscheme gruvbox
set laststatus=2
set guifont=PragmataProMonoLiga\ Nerd\ Font:h16
set fileencodings=utf-8,chinese
set fileencoding=utf-8
set noswapfile
function! MoveFile(newspec)
    let l:old = expand('%')
    " could be improved:
    if (l:old == a:newspec)
        return 0
    endif
    exe 'sav' fnameescape(a:newspec)
    call delete(l:old)
endfunction

command! -nargs=1 -complete=file -bar MoveFile call MoveFile('<args>')

function! TrimWhitespace()
    let l:save = winsaveview()
    %s/\s\+$//e
    call winrestview(l:save)
endfunction

command! TrimWhitespace call TrimWhitespace()

"Ale hotkey
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
"Fast complie Java
map <F12> <Esc>:!javac %<CR>

nmap <C-d> gg=G
inoremap <C-e> <Esc>$a
inoremap <C-b> <Esc>0a

au BufNewFile,BufRead *.ejs set filetype=html

:set mouse=a
