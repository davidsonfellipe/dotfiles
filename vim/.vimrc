"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

let mapleader=","

"fonts and other gui stuff
"make sure to install the powerline patched font
"version of the font you like
"https://github.com/Lokaltog/powerline-fonts
if has("gui_running")
  set guioptions-=T   "remove toolbar
  set guioptions-=r   "remove right-hand scroll bar
  set guioptions-=L   "remove left-hand scroll bar
  try
    set guifont=Monaco \for \Powerline:h14
  catch
    try
      set guifont=Monaco:h14
    catch
      try
        set guifont=SourceCodePro-Regular:h14
      catch
        set guifont=Inconsolata:h16
      endtry
    endtry
  endtry
endif

"adds possibility of using 256 colors
set t_Co=256

"default indent settings
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround

set autoread
set nobackup
set noswapfile
set visualbell
set noerrorbells
set encoding=utf-8
set scrolloff=3
set autoindent
set copyindent
set title
set showmode
set showcmd
set hidden
set cursorline
set ttyfast
set ruler
"allow backspacing over everything in insert mode
set backspace=indent,eol,start
set laststatus=2
"font line-height
set linespace=0
"adds line numbers to the left
set number
"prevents delay while pressing esc on insert mode
set timeoutlen=1000 ttimeoutlen=0
"uses OS clipboard if possible (check +clipboard)
set clipboard=unnamed
"store lots of :cmdline history
set history=1000
"mark the ideal max text width
if exists('+colorcolumn')
  set colorcolumn=80
else
  " remove this in the future where youll always be using vim >= 7.3
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

"some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm

"keep going up dirs until a tags file is found
set tags=tags;/

"enable ctrl-n and ctrl-p to scroll thru matches
set wildmenu
"make cmdline tab completion similar to bash
set wildmode=list:longest
"ignored files while search files and stuff
set wildignore+=*.so,*.dll,*.exe,*.zip,*.tar,*.gz,*.swf
set wildignore+=*.swp,*.swo,*~,*.pyc,*.json
set wildignore+=*.psd,*.png,*.gif,*.jpeg,*.jpg,*.pdf
set wildignore+=*/.git/*,*/.hq/*,*/.svn/*,*/tmp/*
set wildignore+=*/.sass-cache/*,*/node_modules/*
set wildignore+=*.i,*.d,*.sql3 "other exotic extensions

"search options
nnoremap / /\v
vnoremap / /\v
"ignores case
set ignorecase
"do not ignore case if explicitly defined on the search
"by search for an uppercased pattern
set smartcase
"defaults to search for every match of the pattern
set gdefault
set showmatch
"highlight searches by default
set hlsearch
"find the next match as we type the search
set incsearch
"clears search
nnoremap <LEADER><SPACE> :noh<CR>
nnoremap <TAB> %
vnoremap <TAB> %

"dont wrap lines
set wrap
"wrap lines at convenient points
set linebreak
set textwidth=360
set formatoptions=qrn1

"display tabs and trailing spaces
set list
set listchars=tab:▸\ ,eol:¬

"folding options
set foldmethod=indent
set nofoldenable
nnoremap <SPACE> za
vnoremap <SPACE> zf

"turn on syntax highlighting
syntax on

nnoremap j gj
nnoremap k gk
" Use control+up/down to move fast
nnoremap <C-j> 12j
nnoremap <C-k> 12k
vnoremap <C-j> 12j
vnoremap <C-k> 12k

inoremap jj <ESC>
nnoremap ; :

"makes paste work on command-line mode
cnoremap <C-v> <C-r>"

nnoremap <LEADER>ev <C-w><C-v><C-l>:e $MYVIMRC<CR>
nnoremap <LEADER>sv :so $MYVIMRC<CR>
nnoremap <LEADER>w :vsplit<CR><C-w>l
nnoremap <LEADER>v :split<CR><C-w>j
nnoremap <LEADER>a :Ack<Space>

"moves the cursor around the buffer windows
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k

"changes the size of the buffer windows
nnoremap = <C-w>=
nnoremap + :vertical resize +5<CR>
nnoremap - :vertical resize -5<CR>

cmap w!! w !sudo tee % >/dev/null

vnoremap <LEADER>j :!python -m json.tool<CR>

"underline to camelcase
vnoremap <LEADER>tcc :s#_\(\l\)#\u\1#<CR>:noh<CR>
"camelcase to underline
vnoremap <LEADER>tus :s#\([a-z0-9]\+\)\(\u\)#\l\1_\l\2#g<CR>:noh<CR>

"tab related mappings
nnoremap <LEADER>nt :tabnew<CR>
nnoremap <LEADER>[ :tabprevious<CR>
nnoremap <LEADER>] :tabnext<CR>


if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

"let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

"vim-snipmate
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'honza/vim-snippets'
"/vim-snipmate

NeoBundle 'othree/eregex.vim'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'tpope/vim-fugitive', {'augroup': 'fugitive'}
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'thomd/vim-jasmine'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'hostsamurai/CSSMinister.vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'godlygeek/tabular'
NeoBundle 'jszakmeister/vim-togglecursor'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'benmills/vimux'
NeoBundle 'git://repo.or.cz/vcscommand.git'
NeoBundle 'hack-stable', {'type': 'nosync'}


NeoBundle 'Shougo/neocomplcache'
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_auto_select=1
if !exists('g:neocomplcache_omni_functions')
    let g:neocomplcache_omni_functions = {}
endif
let g:neocomplcache_omni_functions['python'] = 'jedi#complete'


"NeoBundle 'davidhalter/jedi-vim'
"let g:jedi#popup_on_dot = 0


NeoBundle 'scrooloose/nerdtree', {'augroup': 'NERDTreeHijackNetrw'}
noremap <LEADER>z :NERDTreeToggle<CR>


NeoBundle 'mattn/zencoding-vim'
nnoremap <C-z> :call zencoding#expandAbbr(0,"")<CR>a
inoremap <C-z> <ESC>:call zencoding#expandAbbr(0,"")<CR>a


NeoBundle 'kien/ctrlp.vim'
let g:ctrlp_map='<LEADER>p'
let g:ctrlp_max_height=20
let g:ctrlp_max_files=2000000
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_working_path_mode = 'a'
nmap <LEADER>y :CtrlPClearCache<CR>


NeoBundle 'scrooloose/syntastic'
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
let g:syntastic_python_flake8_args="--ignore=E501,E502,W293,E121,E123,E124,E125,E126,E127,E128"
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'


NeoBundle 'Lokaltog/vim-powerline'
let g:Powerline_symbols = 'fancy'
"statusline stuff if powerline is not loaded
if !exists("g:Powerline_loaded")
  set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)
  set statusline+=%#warningmsg#
  set statusline+=%{fugitive#statusline()}
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
endif


NeoBundle 'YankRing.vim'
let g:yankring_history_file='.yankring_history'


NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-repeat'
nnoremap <LEADER>' cs"'<CR>
nnoremap <LEADER>" cs'"<CR>


NeoBundle 'majutsushi/tagbar'
nnoremap <LEADER>0 :TagbarToggle<CR>


"colorscheme
NeoBundle 'tomasr/molokai'
colorscheme molokai


"a better htmldjango detection
augroup filetypedetect

  " removes current htmldjango detection located at $VIMRUNTIME/filetype.vim
  au! BufNewFile,BufRead *.html
  au  BufNewFile,BufRead *.html call FThtml()

  fun! FThtml()
    let n = 1
    while n < 10 && n < line("$")
      if getline(n) =~ '{%\|{{\|{#'
        setf htmldjango
        return
      endif
      let n = n + 1
    endwhile

    let n = 1
    while n < 10 && n < line("$")
      if getline(n) =~ '\<DTD\s\+XHTML\s'
        setf xhtml
        return
      endif
      let n = n + 1
    endwhile
    setf html
  endfun

augroup END


"indentation stuff
fun! ToggleIndentationSize()
  let n = 4
  if &shiftwidth == 4
    let n = 2
  endif

  let &tabstop=n
  let &softtabstop=n
  let &shiftwidth=n
  echo "indentation width is now ".n."."
endfun

fun! ToggleIndentationType()
  if &expandtab
    set noexpandtab
    echo "using tabs to indent."
  else
    set expandtab
    echo "using spaces to indent."
  endif
endfun

" sets expandtab based on the first
" indented lines of a file
fun! NaiveIndentationDetector()
  let n = 1
  let max_line_number = 10
  while n < max_line_number && n < line("$")
    let current_line = getline(n)
    if current_line =~ '^\t'
      set noexpandtab
      echo "using tabs to indent."
      return
    endif
    if current_line =~ '^ '
      set expandtab
      echo "using spaces to indent."
      return
    endif
    let n = n + 1
  endwhile
  echo "couldn't detect indentation based on the first ".max_line_number." lines of this file."
endfun

nnoremap <LEADER>fi :retab<CR>
nnoremap <LEADER>tit :call ToggleIndentationType()<CR>
nnoremap <LEADER>tis :call ToggleIndentationSize()<CR>
nnoremap <LEADER>di :call NaiveIndentationDetector()<CR>


"uses xclip to copy things to the clipboard
"even while using vim with ssh.
"NOTES:
" * make sure you start the ssh session with X (ssh -X server).
" * make sure the server has xclip installed.
" * make sure your remote vim is compiled with +clipboard.
" * if you are in OSX, make sure XQuartz is installed
"   (http://xquartz.macosforge.org/landing/).
" * On xQuartz, open a new sheel window (ctrl-n) and hide it
"   or it won't work.
"TODO: make this work on normal mode.
" vmap y y:call system("if hash xclip 2> /dev/null; then xclip -i -selection c; fi", getreg("\""))<CR>


"whitespace in the end of the lines stuff
"http://vim.wikia.com/wiki/Highlight_unwanted_spaces
nnoremap <LEADER>W a<ESC><Bar>:%s/\s\+$//<Bar><CR>``:noh<CR>
highlight ExtraWhitespace ctermbg=darkred guibg=darkred
match ExtraWhitespace /\s\+$/
autocmd WinEnter,InsertLeave * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufWinLeave * call clearmatches()
"NOTE: this has to execute before setting any colorscheme
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkred guibg=darkred


filetype plugin indent on

" Installation check.
" NeoBundleCheck