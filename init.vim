"2022-01-02 23:53:14
"*****************************************************************************
"" Vim-Plug core
"*****************************************************************************
let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')
if has('win32')&&!has('win64')
  let curl_exists=expand('C:\Windows\Sysnative\curl.exe')
else
  let curl_exists=expand('curl')
endif

let g:vim_bootstrap_langs = "html,javascript,python"
let g:vim_bootstrap_editor = "neovim"				" nvim or vim
let g:vim_bootstrap_theme = "dracula"
let g:vim_bootstrap_frams = ""

if !filereadable(vimplug_exists)
  if !executable(curl_exists)
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!"curl_exists" -fLo " . shellescape(vimplug_exists) . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif







" Required:
call plug#begin(expand('~/.config/nvim/plugged'))

"*****************************************************************************
"" Plug install packages
"*****************************************************************************
"
" Themes
"Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'arcticicestudio/nord-vim'
"****************************
"****************************
"*::::**:::****::::::********
"**::***:: ::**::************
"**::***:: ::**::::::********
"**::***:: ::**::************
"*::::**:::****::::::********
"****************************
"****************************
"***********IDE**************

"" Resaltar sintaxis de diferentes lenguajeResaltar sintaxis de diferentes lenguajes
Plug 'sheerun/vim-polyglot'

"colore los colores del texto  en formato rgb ect.
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

" colocar el puntero en una palabra o lugar especifico
Plug 'easymotion/vim-easymotion'
" Arbol de directorios
Plug 'scrooloose/nerdtree'
"Este complemento tiene como objetivo hacer que NERDTree se sienta como un verdadero panel, independiente de las pestañas.
Plug 'jistr/vim-nerdtree-tabs'
"Un complemento de NERDTree que muestra los indicadores de estado de git. 
Plug 'Xuyuanp/nerdtree-git-plugin'
" Agrega íconos de tipo de archivo a los complementos de Vim como: NERDTree, vim-airlines, CtrlP, unite, Denite, lightline, vim-startify y muchos más 
"
Plug 'ryanoasis/vim-devicons'
"Sintaxis adicional y resaltado para archivos nerdtree 
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"" Para Comentar el codigo "  - gc comentar linea - gcap comentar parrafo
Plug 'tpope/vim-commentary'

"" Fugitive es el principal complemento de Vim para Git. 
Plug 'tpope/vim-fugitive'
"" Bara de estado / tabline para vim que es ligero como el aire. 
Plug 'vim-airline/vim-airline'
"" Temas para airliene
Plug 'vim-airline/vim-airline-themes'
"" Un complemento de Vim que muestra un git diff en la columna del signo. Muestra qué líneas se han agregado, modificado o eliminado.
Plug 'airblade/vim-gitgutter'
" El complemento grep le permite buscar un patrón en uno o más archivos y saltar a ellos.
Plug 'vim-scripts/grep.vim'
""
Plug 'vim-scripts/CSApprox'
"" Proporciona una manera fácil de explorar las etiquetas del archivo actual y obtenga una descripción general de su estructura.
Plug 'majutsushi/tagbar'
"" Es un complemento que proporciona linting (verificación de sintaxis y errores semánticos) 
Plug 'dense-analysis/ale'
""Este cokmplemento se utiliza para mostrar líneas verticales finas, para la identacion de cata Tap como en if,for etc. 
Plug 'Yggdroot/indentLine'
Plug 'editor-bootstrap/vim-bootstrap-updater'
Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse


"" fzf es un buscador difuso de línea de comandos de propósito general. 
if isdirectory('/usr/local/opt/fzf')
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
endif
let g:make = 'gmake'
if exists('make')
        let g:make = 'make'
endif

 
Plug 'Shougo/vimproc.vim', {'do': g:make}

"" TYPING
"" Este complemento proporciona el cierre automático de paréntesis, corchetes, etc. 
Plug 'Raimondi/delimitMate'
""siera las llaves de html automáticamente  <h1> </h1>
Plug 'alvan/vim-closetag'

""Surround.vim tiene que ver con alrededores: paréntesis, corchetes, comillas, Etiquetas XML y más. El complemento proporciona asignaciones para eliminar fácilmente, cambiar y agregar ese entorno de dos en dos. 
Plug 'tpope/vim-surround'

"" Vim-Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

""Prettier
""auto identado del texto
"" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

""Multiples Cursores
Plug 'terryma/vim-multiple-cursors'

" # Mapping
" If you don't like the plugin taking over your key bindings, you can turn it off and reassign them the way you want:

" let g:multi_cursor_use_default_mapping=0

" Default mapping
" let g:multi_cursor_start_word_key      = '<C-n>'
" let g:multi_cursor_select_all_word_key = '<A-n>'
" let g:multi_cursor_start_key           = 'g<C-n>'
" let g:multi_cursor_select_all_key      = 'g<A-n>'
" let g:multi_cursor_next_key            = '<C-n>'
" let g:multi_cursor_prev_key            = '<C-p>'
" let g:multi_cursor_skip_key            = '<C-x>'
" let g:multi_cursor_quit_key            = '<Esc>'

"*****************************************************************************
"" Custom bundles
"*****************************************************************************

" html
"" HTML Bundle
Plug 'hail2u/vim-css3-syntax'
Plug 'gko/vim-coloresque'
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'

 
" javascript
"" Javascript Bundle
Plug 'jelera/vim-javascript-syntax'




" python
"" Python Bundle
Plug 'davidhalter/jedi-vim'
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}


"" COC
"" AUTOCOMPLETADO
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'


"*****************************************************************************
"*****************************************************************************

"" Include user's extra bundle
if filereadable(expand("~/.config/nvim/local_bundles.vim"))
  source ~/.config/nvim/local_bundles.vim
endif

call plug#end()

" Required:
filetype plugin indent on


"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overridden by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

"" Map leader to ,
let mapleader=" "

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set fileformats=unix,dos,mac

if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/sh
endif

" session management
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
syntax on
"muestra el numero de posiciones o lines escritas
set number
"muestra la posicion relativa
set relativenumber
"espacio del acho que separa los numeros de lineas de las letras
set numberwidth=1
"Muestra los comados que ingresamos
set showcmd
"Muestra la line a tual y la cantida de lineas escritas en todo el archivo
set showmatch
set ruler
let no_buffers_menu=1
"colorscheme dracula
colorscheme nord 
"command line completion 
set wildmenu

" mouse support
" Permite selecionar el texto con el mause
set mouse=a

set mousemodel=popup
set t_Co=256
set guioptions=egmrti
set gfn=Monospace\ 10

if has("gui_running")
  if has("gui_mac") || has("gui_macvim")
    set guifont=Menlo:h12
    set transparency=7
  endif
else
  let g:CSApprox_loaded = 1

  " IndentLine
  let g:indentLine_enabled = 1
  let g:indentLine_concealcursor = 0
  let g:indentLine_char = '┆'
  let g:indentLine_char_list = ['|', '¦', '┆', '┊']
  let g:indentLine_faster = 1

  
  if $COLORTERM == 'gnome-terminal'
    set term=gnome-256color
  else
    if $TERM == 'xterm'
      set term=xterm-256color
    endif
  endif
  
endif


if &term =~ '256color'
  set t_ut=
endif


"" Disable the blinking cursor.
set gcr=a:blinkon0

set scrolloff=3


"Muestra el estado --normal-- , --Insertar--, --Vista-- etc
"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

" vim-airline
let g:airline_theme = 'nord' " theme= 'luna'
let g:airline_powerline_fonts=1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall


"" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['node_modules','\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite,*node_modules/
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>
nmap <Leader>nt :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1

"" NERDTree-GIT-PLUGIN CONFIGURATION
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

""Hay un mapa predefinido que usa nerdfonts , para habilitarlo
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0

"" mostrar ignored¿estado?
let g:NERDTreeGitStatusShowIgnored = 1 " a heavy feature may cost much more time. default: 0
"" Cómo indicar cada uno untrackedarchivar bajo un untracked
let g:NERDTreeGitStatusUntrackedFilesMode = 'all' " a heavy feature too. default: normal


""CONFIGURACION NERDTreeHighlight
"Deshabilite los íconos de carpetas y archivos no coincidentes que tengan el mismo color 
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1

"Resaltar carpetas usando la coincidencia exacta 
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name


""Personalización de colores 
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

let g:WebDevIconsDefaultFolderSymbolColor = s:green " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule





" grep.vim
nnoremap <silent> <leader>f :Rgrep<CR>
let Grep_Default_Options = '-IR'
let Grep_Skip_Files = '*.log *.db'
let Grep_Skip_Dirs = '.git node_modules'

" terminal emulation
nnoremap <silent> <leader>sh :terminal<CR>


"*****************************************************************************
"" Commands
"*****************************************************************************
" remove trailing whitespaces
command! FixWhitespace :%s/\s\+$//e

"*****************************************************************************
"" Functions
"*****************************************************************************
if !exists('*s:setupWrapping')
  function s:setupWrapping()
    set wrap
    set wm=2
    set textwidth=79
  endfunction
endif

"*****************************************************************************
"" Autocmd Rules
"*****************************************************************************
"" The PC is fast enough, do syntax highlight syncing from start unless 200 lines
augroup vimrc-sync-fromstart
  autocmd!
  autocmd BufEnter * :syntax sync maxlines=200
augroup END

"" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

"" txt
augroup vimrc-wrapping
  autocmd!
  autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
augroup END

"" make/cmake
augroup vimrc-make-cmake
  autocmd!
  autocmd FileType make setlocal noexpandtab
  autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmakee
augroup END

set autoread

"*****************************************************************************
"" Mappings
    "*****************************************************************************


"" General
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
:imap ii <Esc>

" Easymotion
nmap <Leader>s <Plug>(easymotion-s2)

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Git commit --verbose<CR>
noremap <Leader>gsh :Git push<CR>
noremap <Leader>gll :Git pull<CR>
noremap <Leader>gs :Git<CR>
noremap <Leader>gb :Git blame<CR>
noremap <Leader>gd :Gvdiffsplit<CR>
noremap <Leader>gr :GRemove<CR>

" session management
nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

"" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

"" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

"" fzf.vim
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"

" The Silver Searcher
if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
  set grepprg=ag\ --nogroup\ --nocolor
endif

" ripgrep
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
  command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif

cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>e :FZF -m<CR>
"Recovery commands from history through FZF
nmap <leader>y :History:<CR>

" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"

" ale
let g:ale_linters = {}

" Tagbar
nmap <silent> <F4> :TagbarToggle<CR>
nmap <leader>fe :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" Disable visualbell
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

"Permite copiar el texto con el mause
"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif

"" Buffer nav
noremap <leader>bp :bp<CR>
noremap <leader>bp :bp<CR>
noremap <leader>bn :bn<CR>
noremap <leader>bn :bn<CR>

"" Close buffer
noremap <leader>c :bd<CR>

"" Clean search (highlight)
nnoremap <silent> <leader>l :noh<cr>

"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"" Open current line on GitHub
nnoremap <Leader>o :.Gbrowse<CR>

"*****************************************************************************
"" Custom configs
"*****************************************************************************

" html
" for html files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab


" javascript
let g:javascript_enable_domhtmlcss = 1

" vim-javascript
augroup vimrc-javascript
  autocmd!
  autocmd FileType javascript setl tabstop=4|setl shiftwidth=4|setl expandtab softtabstop=4
augroup END


" python
" vim-python
augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
      \ formatoptions+=croq softtabstop=4
      \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END

" jedi-vim
let g:jedi#popup_on_dot = 0
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "0"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#smart_auto_mappings = 0

" ale
:call extend(g:ale_linters, {
    \'python': ['flake8'], })

" vim-airline
let g:airline#extensions#virtualenv#enabled = 1

" Syntax highlight
let python_highlight_all = 1



"*****************************************************************************
"*****************************************************************************

"" Include user's local vim config
if filereadable(expand("~/.config/nvim/local_init.vim"))
  source ~/.config/nvim/local_init.vim
endif

"*****************************************************************************
"" Convenience variables
"*****************************************************************************

" vim-airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif


""CONFIGURATION Prettier
""command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

""CONFIGURACION TERMINAL
""nueva ventana en la parte inferior
set splitbelow
""nueva ventana en la parte derecha
set splitright

""open terminal 
vnoremap <Leader>t :split<CR>:terminal<CR>:resize 10<CR> i
nnoremap <Leader>t :split<CR>:terminal<CR>:resize 10<CR> i fish<CR>
tnoremap <C-t> exit<CR>exit<CR> 


"CONFIGURACION DEL COLORIZANTE hexokinase
let g:Hexokinase_highlighters = ['virtual']
"let g:Hexokinase_highlighters = ['sign_column']
"let g:Hexokinase_highlighters = ['foreground']
"let g:Hexokinase_highlighters = ['foregroundfull']
"let g:Hexokinase_highlighters = ['background']
"let g:Hexokinase_highlighters = ['backgroundfull']
" Patterns to match for all filetypes
" Can be a comma separated string or a list of strings

""activa para que se vean los colores en la terminal Nota: Todoslos colores pasan aversen mas oscuros
set termguicolors
" Default value:
let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla,colour_names'

" All possible values
let g:Hexokinase_optInPatterns = [
\     'full_hex',
\     'triple_hex',
\     'rgb',
\     'rgba',
\     'hsl',
\     'hsla',
\     'colour_names'
\ ]

" Filetype specific patterns to match
" entry value must be comma seperated list
let g:Hexokinase_ftOptInPatterns = {
\     'css': 'full_hex,rgb,rgba,hsl,hsla,colour_names',
\     'html': 'full_hex,rgb,rgba,hsl,hsla,colour_names'
\ }

