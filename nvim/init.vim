"
" Neovim Configuration File
"

" Plugins using vim-plug
call plug#begin()
  
  "
  " source: https://github.com/shawndumas/dotfiles/blob/master/nvim/.nvimrc
  "

  " Vim colorscheme based on flatlandia with Airline integration
  "Plug 'blerins/flattown'

  " Light & Dark Vim color schemes inspired by Google's Material Design
  Plug 'nlknguyen/papercolor-theme'
  
  " Base16 colors for Vim:
  "Plug 'chriskempson/base16-vim'

  " A Vim color scheme based on the Railcasts Textmate theme
  "Plug 'jpo/vim-railscasts-theme'

  " Lean & mean status/tabline for vim that's light as air
  Plug 'bling/vim-airline'
  
  " A collection of themes for vim-airline
  Plug 'vim-airline/vim-airline-themes'

  " EditorConfig plugin for Vim
  "Plug 'editorconfig/editorconfig-vim'

  " Toggles between relative and absolute line numbers automatically
  "Plug 'jeffkreeftmeijer/vim-numbertoggle'

  " Gitk for Vim
  "Plug 'gregsexton/gitv', { 'on': 'Gitv' }

  " vim-snipmate default snippets (Previously snipmate-snippets)
  "Plug 'honza/vim-snippets'

  " A Vim alignment plugin
  " (Alinear usando [gaip] en columnas)
  Plug 'junegunn/vim-easy-align'

  " The missing motion form Vim
  " (Pulsando [s] y dos vocales más te hace un buscador de esas 2 donde se
  " puede saltar con [,] o [;] para misma linea o multilinea
  "Plug 'justinmk/vim-sneak'

  "Plug 'kana/vim-textobj-datetime'
  "Plug 'kana/vim-textobj-entire'
  "Plug 'kana/vim-textobj-indent'
  "Plug 'kana/vim-textobj-lastpat'
  "Plug 'kana/vim-textobj-line'
  "Plug 'kana/vim-textobj-syntax'
  "Plug 'kana/vim-textobj-user'
  
  " Active fork of kien/ctrlp.vim - Fuzzy file, buffer, mru, tag, etc finder.
  Plug 'ctrlpvim/ctrlp.vim'

  " Tern plugin for Vim (find definition, go to documentation, etc)
  Plug 'marijnh/tern_for_vim', { 'for': 'javascript', 'do': 'npm install' }

  " Emmet for Vim
  Plug 'mattn/emmet-vim', { 'for': [ 'html', 'css', 'sass', 'less' ] }

  "  Show a diff via Vim sign column (left col)
  Plug 'mhinz/vim-signify'

  " Vim plugin for the Perol module / CLI script 'ack'
  Plug 'mileszs/ack.vim'

  " Mustache and handlebars mode for vim
  Plug 'mustache/vim-mustache-handlebars'
  
  " Changes a JavaScript anonymous function to an arrow function expression
  " (ES 2015)
  Plug 'mvolkmann/vim-js-arrow-function', { 'for': 'javascript' }

  " A Vim plugin for visually displaying indent levels in code
  Plug 'nathanaelkane/vim-indent-guides'

  ":substitute preview (sed like syntax)
  Plug 'osyo-manga/vim-over'
  
  " Vastly improved JavaScript indentation and syntax support in Vim
  Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
  
  " CoffeeScript support for Vim
  Plug 'kchmck/vim-coffee-script', { 'for': 'coffee'}

  " React JSX syntax highlighting and indenting for vim
  "Plug 'mxw/vim-jsx'

  " Vim plugin, provides insert mode auto-completion for quotes, parens,
  " brackets, etc
  Plug 'Raimondi/delimitMate'

  " Delete all the buffers except the current buffer
  Plug 'schickling/vim-bufonly'

  " Filesystem explorer, directories and files tree viewer
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

  " Syntax checking hacks for Vim
  Plug 'scrooloose/syntastic'
  
  " Comprobar el plugin 'vim-syntastic-coffee'
  Plug 'vitaly/vim-syntastic-coffee'

  " The ultimate snipper solution for Vim.
  Plug 'sirver/ultisnips'

  " Vim plugin to visualize Vim undo tree.
  Plug 'sjl/gundo.vim'

  " Cutting-edge vim css syntaxt file
  Plug 'stephenway/postcss.vim'

  " Easy text exchange operator for Vim
  Plug 'tommcdo/vim-exchange'

  " Easily search for substitute and abbreviate multiple variants of a word
  Plug 'tpope/vim-abolish'

  " Comment stuff out
  Plug 'tpope/vim-commentary'

  " UNIX helpers (:SudoEdit, :Locate, :Chmod, :Mkdir, etc)
  Plug 'tpope/vim-eunuch'
  
  " A git wrapper so awesome, it should be illegal
  Plug 'tpope/vim-fugitive'

  " JSON manipulation and pretty printing
  Plug 'tpope/vim-jdaddy'

  " Vim Markdown runtime files
  Plug 'tpope/vim-markdown'

  " Renamed to 'tpope/vim-projectionist
  Plug 'tpope/vim-projectile'
  
  " Enable repeating supported plugin maps
  Plug 'tpope/vim-repeat'

  " Use Ctrl-A/Ctrl-X to increment dates, times and more
  Plug 'tpope/vim-speeddating'

  " Quoting/paranthesizing 
  Plug 'tpope/vim-surround'

  " Pairs of handy bracket mappings
  Plug 'tpope/vim-unimpaired'

  " A code-completion engine for Vim
  Plug 'valloric/youcompleteme'

  " Next generation completion framework after neocomplcache
  "Plug 'shougo/neocomplete.vim'

  " Neo-snippet plugin contains neocomplcache snippets source
  "Plug 'shougo/neosnippet.vim'

  " Edit every file in a quickfix list at the same time
  Plug 'wolfy87/vim-enmasse'

  " Expand like {foo,bar}, {1..10} and $HOME inline with a single command
  Plug 'Wolfy87/vim-expand'

  " A vim plugin to display the indentation levels with thin vertical lines
  Plug 'yggdroot/indentline'

call plug#end()

syntax enable

"
" Plugins configuration
"

" Airline
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline#extensions#tabline#fnamecollapse = 0
let g:airline_detect_crypt = 0
"let g:nerdtree_tabs_open_on_console_startup=1

" YouCompleteMe settings
let g:ycm_key_list_select_completion = ['<C-J>']
let g:ycm_key_list_previous_completion = ['<C-K>']

"UltiSnips settings
"let g:UltiSnipsExpandTrigger = "<C-l>"
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"
let g:UltiSnipsSnippetDirectories = ["UltiSnips"]
let g:UltiSnipsEditSplit = "vertical"
let g:UltiSnipsEnableSnipMate = 0
let g:snips_author_name = "Santiago"
let g:snips_author_fullname = "Santiago Camargo Rodríguez"
let g:snips_author_email = "santi.camargo.rodriguez@gmail.com"

" Synstastic recommended settings
let g:syntastic_auto_jump = 1
let g:syntastic_check_on_open = 1
let g:syntastic_echo_current_error = 1
let g:syntastic_enable_balloons = 1
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = 'E'
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_style_error_symbol = 'E'
let g:syntastic_style_warning_symbl = 'W'

" Remove error 'Unknown function SyntasticStatusLineFlag()
let g:startline_syntastic = 0

"let g:pymode_rope_lookup_project = 0
let g:tern_map_keys = 1
let g:tern_show_argument_hints = 'on_hold'
let g:user_emmet_leader_key='<C-E>'
"let g:user_emmet_leader_key='<Tab>'

" Relative line number trigger
let g:NumberToggleTrigger="<F2>"

" Allow JSX in normal JS files
"let g:jsx_ext_required = 0
"let g:jsx_pragma_required = 1

"let g:snips_trigger_key = '<C-X>'

"let g:neosnippet#enable_snipmate_compatibility = 1


"
" Main options
"

set background=dark
colorscheme PaperColor
"colorscheme flattown
"colorscheme base16-ocean
"colorscheme base16-railscasts

let mapleader = ' '
let maplocalleader = '  '


set autoindent

" Read file when external changes are applied
set autoread

" Set <Tab> as space (Crl-V<TAB>)
set expandtab
set shiftwidth=2
set softtabstop=2


syntax enable

"set runtimepath
set statusline=%#warningmsg#
set statusline+=%{SyntasticStatusLineFlag()}
set statusline+=%*

"
set relativenumber
set ruler
set scrolloff=0
set showmatch
set showcmd
set clipboard=unnamed
set mouse="nv"

"
" Functions
"

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
    set number
  else
    set relativenumber
  endif
endfunc


" Mapping
"

"nmap <leader>d :NERDTreeToggle<cr>
"nmap <leader>e :Expand<cr>
"nmap <leader>f :NERDTreeFind<cr>
nnoremap <leader>nt :call NumberToggle()<cr>

map <leader>e :Explore<cr>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
