
" https://github.com/junegunn/vim-plug
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Plug 'iCyMind/NeoSolarized'
"
" https://github.com/morhetz/gruvbox/wiki/Installation
Plug 'morhetz/gruvbox'
" https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'
" best git plugin ?
Plug 'tpope/vim-fugitive'
" Initialize plugin system
Plug 'ryanoasis/vim-devicons'
" https://github.com/euclio/vim-markdown-composer
" function! BuildComposer(info)
"   if a:info.status != 'unchanged' || a:info.force
"     if has('nvim')
"       !cargo build --release
"     else
"       !cargo build --release --no-default-features --features json-rpc
"     endif
"   endif
" endfunction
Plug 'euclio/vim-markdown-composer'

call plug#end()


" set termguicolors
" let g:solarized_termcolors=256

let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark " Setting dark mode

set rnu
set nu

"set guifont=Knack\ Nerd\ Font\ 10
set encoding=utf8
let g:airline_powerline_fonts = 1

" Airline config from :help airline-tabline
"let g:airline#extensions#tabline#enabled = 0
"let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#tabline#enabled = 1

" wildmenu :e,:vsp,;sp **/*partOfFileName
" Don't offer to open certain files/directories
" set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
" set wildignore+=*.pdf,*.psd
" set wildignore+=node_modules/*,bower_components/*"

" connect systemclipboard and vim register
set clipboard=unnamedplus

" bufferlist and ready for jetpack
silent! map gb :ls<CR>:b<space>

" https://github.com/brianclemens/dotfiles/blob/master/.config/nvim/init.vim
"

" toggle paste mode
set pastetoggle=<F2>

" NerdTree
" silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>
let g:NERDTreeMapActivateNode="<F3>"
silen! map <F4> :NERDTreeToggle<CR>
"let g:NERDTreeMapPreview="<F4>"

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" tab options
set tabstop=4
set shiftwidth=4
set expandtab

" set title and allow hidden buffers
set title
set hidden
" set list

" Auto remove all trailing whitespace on :w
autocmd BufWritePre * :%s/\s\+$//e

" Autosave files when focus is lost
:au FocusLost * :wa

" Line Numbers
set number
set numberwidth=3

" Path will be base dir that vim is opened from
set path=$PWD/**

set nomodeline
set noshowmode			" Hide the default mode text (e.g. -- INSERT -- below the statusline)
set shortmess=atToOI    " To avoid the 'Hit Enter' prompts caused by the file messages
set undolevels=1000
set updatetime=1500

" Wild menu (Autocompletion)"
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.jpeg,*.png,*.xpm,*.gif
set wildmode=list:longest,full

" Backup and Swap
set nobackup
set nowritebackup
set noswapfile

" Search Options
set hlsearch   " Highlight search
set magic      " Set magic on, for regular expressions
set ignorecase " Searches are Non Case-sensitive
set smartcase

" FOLDING
set foldenable
set foldmethod=marker
set foldlevel=0
set foldcolumn=0

" colors
set t_Co=256
colorscheme gruvbox
set background=dark
" hi Normal ctermbg=none	" transparent background

set encoding=utf-8

" General UI Options
set mouse=a
set showmatch          " Shows matching brackets when text indicator is over them
set cursorline
set scrolljump=10
set ttyfast            " Improves redrawing for newer computers
set pumheight=20       " popup menu height
set diffopt+=context:3
set nostartofline      " when moving thru the lines, the cursor will try to stay in the previous columns

" LAYOUT / TEXT FORMATTING
" Formatting Options
set wrap " Soft Wrap in all files, while hard wrap can be allow by filetype
set linebreak " It maintains the whole words when wrapping
set smartindent
" execute "set colorcolumn=" . join(range(81,335), ',')
set colorcolumn=81

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" gvim options - remove the toolbar.
set guioptions-=L
set guioptions-=T

set laststatus=2 " Always show airline bar
