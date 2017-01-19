set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'trevordmiller/nova-vim'

Plugin 'othree/html5.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'mxw/vim-jsx'
Plugin 'elmcast/elm-vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'vimwiki/vimwiki'
Plugin 'jiangmiao/auto-pairs'

Plugin 'vim-airline/vim-airline'

Plugin 'mtscout6/syntastic-local-eslint.vim'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'easymotion/vim-easymotion'

Plugin 'dracula/vim'

Plugin 'airblade/vim-gitgutter'

Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/syntastic'
Plugin 'valloric/youcompleteme'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdcommenter'

call vundle#end()
filetype plugin indent on

set relativenumber
set number
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set visualbell
set clipboard=unnamed

set hlsearch
set smartcase
set ignorecase
set incsearch

set autoindent
set expandtab
set shiftwidth=2
set tabstop=2
set smartindent

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

if &term =~ '256color'
     set t_ut=
 endif

set guifont=Meslo\ LG\ L\ for\ Powerline:h15
set encoding=utf-8
let g:Powerline_symbols = 'fancy'

set ruler
set laststatus=2
set statusline+=%{fugitive#statusline()}
set undolevels=1000
set backspace=indent,eol,start

set updatetime=250
set path+=**
set wildignore+=*/node_modules/*,*/vendor/*


nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

let g:elm_syntastic_show_warnings = 1
let g:elm_format_autosave = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_elm_checkers = ["elm_make"]
let g:jsx_ext_required = 0


let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" No docs window for YouCompleteMe

" Make editorconfig work with vim-fugitive and don't use over ssh
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

let g:mustache_abbreviations = 1

" use , for leader instead of backslash
let mapleader=","

" Eliminate all trailing whitespace
nnoremap <leader>w :%s/\s\+$//e<CR>

let g:airline_theme='cobalt2'
let g:airline_powerline_fonts=1

let g:ctrlp_custom_ignore = {
 \ 'dir': '\.git$\|\.hg$\|\.svn$\|node_modules$\|coverage$\|elm-stuff$',
 \ 'file': '\.o$\|\.exe$\|\.bin$'
 \ }

map <Leader>h :noh<CR>

set pastetoggle=<F2>
:map <F5> :setlocal spell! spelllang=en_us<CR>

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
syntax on
colorscheme nova
" color dracula
set termguicolors
