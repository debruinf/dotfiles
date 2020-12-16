" set the runtime path to include Vundle and initialize
"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

filetype off

" let Vundle manage Vundle, required
" Plugin 'gmarik/Vundle.vim'
Plugin 'VundleVim/Vundle.vim'


" --------------------------------------------------------------
" see :h vundle for more details or wiki for FAQ
" hieronder moeten de plugin url komen voor de andere plugins:

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired'
Plugin 'mattn/emmet-vim'
Plugin 'junegunn/fzf'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'jremmen/vim-ripgrep'
Plugin 'TaskList.vim'

Plugin 'ervandew/supertab'
Plugin 'prettier/vim-prettier'
" Plugin 'w0rp/ale'
Plugin 'dense-analysis/ale'


" Language specific plugins
Plugin 'elixir-editors/vim-elixir'
" Plugin 'slashmili/alchemist.vim'
" Plugin 'isRuslan/vim-es6'
" Plugin 'racer-rust/vim-racer'


Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'maxmellon/vim-jsx-pretty'


" Colorschemes
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'dracula/vim'
Plugin 'junegunn/seoul256.vim'
Plugin 'humanoid-colors/vim-humanoid-colorscheme'

" All of your Plugins must be added before the following line
"
call vundle#end()            " required
filetype plugin indent on    " required

" Colorscheme
let g:dracula_colorterm = 0
let g:dracula_italic = 0
set term=screen-256color
set t_Co=256
set background=dark
colorscheme seoul256
" Colorscheme for airline
let g:airline_theme='luna'


"Local leader omzetten van "/" naar ","
let maplocalleader = ","
let mapleader = ","

" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
" filetype off                  " required

" Onderstaande dingen zijn belangrijk voor de VIM R plugin
" Onderstaande gewijzigd om vundle aan de praat te krijgen, voor de R plugin
" moet er staan filetype plugin on
filetype on

" Enable syntax highlighting
" Voor de zekerheid nog er maar eentje bijgedaan
syntax on
syntax enable

" van shift+; naar \ voor :
nnoremap \ :


"------------------------------------------------------------
" Must have options
"
" These are highly recommended options.

" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set incsearch
set hlsearch

" Dingen die ik uit andere vimrc heb gekopieerd
set showmatch

" set 7 lines to the cursor - when moving vertically using j/k
set so=7

" set colon as word boundary
set iskeyword-=:

" Usability options
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" press <Enter> to continue"
set cmdheight=1

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab

"------------------------------------------------------------
" Mappings
"
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

""------------------------------------------------------------
""R plugin short cuts
""start R with F2 key
"map <F2> <Plug>RStart
"imap <F2> <Plug>RStart
"vmap <F2> <Plug>RStart
"" send selection to R with space bar
"vmap <Space> <Plug>RDSendSelection
"" send line to R with space bar
"nmap <Space> <Plug>RDSendLine


" Key mappings om automatisch haakjes te laten sluiten
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()

inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []

inoremap "      ""<Left>
inoremap "<CR>  "<CR>"<Esc>O
inoremap ""     "
inoremap """    """

inoremap <      <><Left>
inoremap <%      <%%><Left><Left>
inoremap <<CR>  <<CR>><Esc>O
inoremap <<     <
inoremap <>     <>


" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

" Zorgen dat afgekapte zinnen bij het navigeren gezien worden als aparte
" zinnen, dus dat je met 'j' en 'k' naar de volgende lijn gaat en niet per se
" naar de volgende zin
nnoremap j gj
nnoremap k gk

" voor de emmet plugin de leader Y vervangen voor de betere Z
let g:user_emmet_leader_key='<C-Z>'


" LATEX instelling die nodig zijn
set grepprg=grep\ -nH\ $*
filetype indent on
let g:tex_flavor='latex'
" autocmd BufRead,BufNewFile *.Rnw set filetype=tex
set iskeyword+=:

" " tmux line config
" let g:tmuxline_powerline_separators = 0
" let g:tmuxline_preset = "full"

" Airline config
" silent! call g:airline#extensions#whitespace#disable()
" let g:airlines#extensions#tmuxline#enabled = 0
" let g:airline_powerline_fonts = 1

" " Enable the list of buffers
" let g:airline#extensions#tabline#enabled = 1

" " Show just the file name of buffers
" let g:airline#extensions#tabline#fnamemod = ':t'

" Remap voor Esc maken
imap jj <Esc>


" test met extra contrast voor comments
" highlight Comment ctermbg=Green
" highlight Comment ctermfg=Lightgrey

" standaard .swp files opslaan in een aparte file onder ~/tmp/vim-tmp
set backupdir=~/tmp/vimtmp
set directory=~/tmp/vimtmp


" vimrc inladen en opslaan met keyboard mapping
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :so ~/.vimrc<CR>

" Dingen gestolen van Steve Losh

" Nieuwe wit regel en terug naar normal mode
nnoremap <CR> o<esc>

" Panic button
nnoremap <F9> mzggg?G`z
inoremap <F9> <esc>mzggg?G`z

" Na join van regels de cursos op de juiste plaats
nnoremap J mzJ`z

" Als er een regel gewrapt is dan een tekentje aan het begin van de regel
" set showbreak=↪

" Instelling voor javascri[pt en jsx files
let g:jsx_ext_required = 0

" Betere cursor positionering na een yank
vnoremap y myy`y
vnoremap Y myY`y


" Easier filetype change
nnoremap <leader>f<space> :set ft=

" Password management
" Set more robust encryption
set cm=blowfish

" start fuzzy finder
nnoremap <C-F> :FZF<CR>

" start git grep
nnoremap <C-G> :Ggrep<space>
" open git status
nnoremap <leader>st :Gstatus<CR>
" open git commit
nnoremap <leader>sc :Gcommit<CR>

"
" PRETTIER CONFIG
"

" Prettier under a button
nnoremap <leader>P :Prettier<CR>

" Run prettier on every save
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.graphql,*.vue,*.yaml,*.html Prettier

" Config
let g:prettier#config#single_quote = 'true'
let g:prettier#config#jsx_bracket_same_line = 'false'
let g:prettier#config#bracket_spacing = 'false'
let g:prettier#config#tab_width = 4
let g:prettier#config#config_precedence = 'prefer-file'
let g:prettier#config#print_width = 100


" Linting option (mainly for javascript)
" let g:ale_lint_on_enter = 1
" let g:ale_lint_on_text_change = 1

" Prettier disable focus on quick fix menu\
let g:prettier#quickfix_auto_focus = 0

" mappings for navigating buffers
nnoremap <silent> <leader>d :bp\|bd #<CR>
nnoremap <silent> <leader>< :bp<CR>
nnoremap <silent> <leader>> :bn<CR>

" temp abbreviations
iabbrev office office-ui-fabric-react

" Abbreviations for sales force react library
iabbrev chakra '@chakra-ui/core';<esc>

" Abbreviations for reactFragemt
iabbrev rfrf <React.Fragment<esc>la<CR></React.Fragment<esc>O

"  ale for elixir
let g:ale_fixers = { 'elixir': ['mix_format'] }

" Trying out vimscripting
set runtimepath+=/Users/freek/src/vimscript/file_loader.vim

" Set filetype to elixir on case live eex
autocmd BufNewFile,BufRead *.leex set syntax=eelixir
