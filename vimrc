set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'nanotech/jellybeans.vim'
Bundle 'vim-scripts/wombat256.vim'
Plugin 'NLKNguyen/papercolor-theme'
Bundle 'noahfrederick/vim-hemisu'
Bundle 'vim-scripts/mayansmoke'
"Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim'}
Plugin 'itchyny/lightline.vim'
Bundle 'mattn/vimtweak'
Bundle 'mattn/transparency-windows-vim'
Bundle 'vcscommand.vim'
Bundle 'ctrlp.vim'
Bundle 'jlanzarotta/bufexplorer'
Bundle 'Buffergator'
Bundle 'aklt/plantuml-syntax'

if has('gui')
  Bundle 'CSApprox'
endif

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

if has('gui_running')
    "set guifont=Source_Code_Pro:h9:cANSI
    set guifont=Powerline_Consolas:h8:cANSI
    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar
    "set lines=999 columns=999
    "set lines=40 columns=150
    " Use ~x on an English Windows version or ~n for French.
    au GUIEnter * simalt ~x
    "set showtabline=2 " Always display the tabline, even if there is only one tab
endif

set number
set background=light
colorscheme desert
set t_Co=256

set nobackup
set nowritebackup

set shortmess+=I " Hide welcome message

" Set split separator to Unicode box drawing character
set encoding=utf8
"set fillchars=vert:|
set fillchars+=vert:\ " use none for separator

" Override color scheme to make split the same color as tmux's default
" hi VertSplit ctermbg=NONE guibg=NONE
" hi NonText ctermfg=255 guifg=255
hi vertsplit ctermfg=253 guibg=253

set laststatus=2 " Always display the statusline in all windows
"set showtabline=2 " Always display the tabline, even if there is only one tab

"set spell spelllang=en_us
vnoremap . :norm.<CR>

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"x":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

let g:netrw_liststyle=3 " show tree in :E[xplore]
"let g:netrw_list_hide= '.*\.swp$'
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize =35
let g:netrw_chgwin=2
let g:netrw_banner=0   " no banner

let NERDTreeIgnore=['CVS']

nnoremap <F5> :buffers<CR>:buffer<Space>
set wildchar=<Tab> wildmenu wildmode=full

" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

inoremap jj <Esc>

set splitbelow
set splitright

set expandtab
set shiftwidth=4
set softtabstop=4

cabbr <expr> %% expand('%:p:h')

set cursorline
hi CursorLine cterm=NONE ctermbg=254 guibg=254

" tests
