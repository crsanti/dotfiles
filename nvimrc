"
" Neovim Configuration File
"

" Plugins using vim-plug
call plug#begin()

"
" source: https://github.com/shawndumas/dotfiles/blob/master/nvim/.nvimrc
"

"
" Themes
"

" Plug 'blerins/flattown'
"Plug 'chriskempson/base16-vim'
"Plug 'jpo/vim-railscasts-theme'
"------------------------------------------------------------------
Plug 'nlknguyen/papercolor-theme'

" Lean & mean status/tabline for vim that's light as air
Plug 'bling/vim-airline'

" A solid language pack for Vim
" Plug 'sheerun/vim-polyglot'

" A collection of themes for vim-airline
Plug 'vim-airline/vim-airline-themes'

" A Vim alignment plugin
" (Alinear usando [gaip] en columnas)
" Plug 'junegunn/vim-easy-align'

" Active fork of kien/ctrlp.vim - Fuzzy file, buffer, mru, tag, etc finder.
" Plug 'ctrlpvim/ctrlp.vim'

" Tern plugin for Vim (find definition, go to documentation, etc)
" Plug 'marijnh/tern_for_vim', { 'for': 'javascript', 'do': 'npm install' }

" Emmet for Vim
" Plug 'mattn/emmet-vim', { 'for': [ 'html', 'css', 'sass', 'less' ] }

"  Show a diff via Vim sign column (left col)
"Plug 'mhinz/vim-signify'

" Vastly improved JavaScript indentation and syntax support in Vim
" Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

" CoffeeScript support for Vim
"Plug 'kchmck/vim-coffee-script', { 'for': 'coffee'}

" React JSX syntax highlighting and indenting for vim
" Plug 'mxw/vim-jsx'

" Vim plugin, provides insert mode auto-completion for quotes, parens,
" brackets, etc
" Plug 'Raimondi/delimitMate'

" Comprobar el plugin 'vim-syntastic-coffee
" Plug 'vitaly/vim-syntastic-coffee', { 'for': 'coffee' }

" A plugin for asynchronous :make using Neovim's job-control functionality
" Plug 'benekastah/neomake'

" The ultimate snipper solution for Vim.
" Plug 'sirver/ultisnips'

" Comment stuff out
Plug 'tpope/vim-commentary'

" Enable repeating supported plugin maps
" Plug 'tpope/vim-repeat'

" Quoting/paranthesizing 
Plug 'tpope/vim-surround'

" A code-completion engine for Vim
" Plug 'valloric/youcompleteme'

" EditorConfig plugin for Vim
" Plug 'editorconfig/editorconfig-vim'
"------------------------------------------------------------------------------------

" EditorConfig plugin for Vim
"Plug 'editorconfig/editorconfig-vim'

" Vim plugin for the Perol module / CLI script 'ack'
"Plug 'mileszs/ack.vim'

" Mustache and handlebars mode for vim
"Plug 'mustache/vim-mustache-handlebars'

" Changes a JavaScript anonymous function to an arrow function expression
" (ES 2015)
"Plug 'mvolkmann/vim-js-arrow-function', { 'for': 'javascript' }

" A Vim plugin for visually displaying indent levels in code
"Plug 'nathanaelkane/vim-indent-guides'

":substitute preview (sed like syntax)
"Plug 'osyo-manga/vim-over'

" AngularJS for Javascript
"Plug 'burnettk/vim-angular', { 'for': 'javascript' }

" Pairs of handy bracket mappings
"Plug 'tpope/vim-unimpaired'

" Use Ctrl-A/Ctrl-X to increment dates, times and more
"Plug 'tpope/vim-speeddating'

" Delete all the buffers except the current buffer
"Plug 'schickling/vim-bufonly'

" Filesystem explorer, directories and files tree viewer
"Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Syntax checking hacks for Vim
"Plug 'scrooloose/syntastic'

" Vim plugin to visualize Vim undo tree.
"Plug 'sjl/gundo.vim'

" Cutting-edge vim css syntaxt file
"Plug 'stephenway/postcss.vim'

" Easy text exchange operator for Vim
"Plug 'tommcdo/vim-exchange'

" Easily search for substitute and abbreviate multiple variants of a word
"Plug 'tpope/vim-abolish'

" UNIX helpers (:SudoEdit, :Locate, :Chmod, :Mkdir, etc)
"Plug 'tpope/vim-eunuch'

" A git wrapper so awesome, it should be illegal
"Plug 'tpope/vim-fugitive'

" JSON manipulation and pretty printing
"Plug 'tpope/vim-jdaddy'

" Vim Markdown runtime files
"Plug 'tpope/vim-markdown'

" Renamed to 'tpope/vim-projectionist
"Plug 'tpope/vim-projectile'

" Next generation completion framework after neocomplcache
"Plug 'shougo/neocomplete.vim'

" Neo-snippet plugin contains neocomplcache snippets source
"Plug 'shougo/neosnippet.vim'

" Edit every file in a quickfix list at the same time
"Plug 'wolfy87/vim-enmasse'

" Expand like {foo,bar}, {1..10} and $HOME inline with a single command
"Plug 'Wolfy87/vim-expand'

" A vim plugin to display the indentation levels with thin vertical lines
"Plug 'yggdroot/indentline'

" A vim plugin for visually displaying indent levels in code
"Plug 'nathanaelkane/vim-indent-guides'

" Gitk for Vim
"Plug 'gregsexton/gitv', { 'on': 'Gitv' }

" vim-snipmate default snippets (Previously snipmate-snippets)
"Plug 'honza/vim-snippets'

call plug#end()


"
" Plugins configuration
"

" Airline settings
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline#extensions#tabline#fnamecollapse = 0
let g:airline_detect_crypt = 0

" YouCompleteMe settings
map <c-h> <Nop>
let g:ycm_key_list_select_completion = ['<c-l>']
let g:ycm_key_list_previous_completion = ['<c-h>']

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

" Synstastic settings
"let g:syntastic_auto_jump = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_echo_current_error = 1
"let g:syntastic_enable_balloons = 1
"let g:syntastic_enable_signs = 1
"let g:syntastic_error_symbol = 'E'
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_style_error_symbol = 'E'
"let g:syntastic_style_warning_symbl = 'W'

" JSX highlighting y formatting sólo en .jsx
let g:jsx_ext_required = 1

"
" Neomake
"highlight MyErrorMsg ctermfg=231 ctermbg=196
let g:neomake_error_sign = {
			\ 'texthl': 'ErrorMsg',
			\ }

hi MyWarningMsg ctermbg=3 ctermfg=0
let g:neomake_warning_sign = {
			\ 'text': '>>',
			\ 'texthl': 'WarningMsg',
			\ }

"let g:neomake_verbose=3
"let g:neomake_logfile='/tmp/neomake.log'
" let g:neomake_javascript_eslint_maker = {
" 	\ 'errorformat': '%f: line %l\, col %c\, %m',
" 	\ }
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_markers = ['eslint']
autocmd BufEnter *.bowerrc,*.babelrc,*.eslintrc :setlocal filetype=json
"autocmd BufWritePost,BufEnter *.js,*.jsx Neomake
"autocmd BufWritePost,BufEnter * Neomake
"Autocmd! QuitPre * let g:neomake_verbose = 0

" Ternjs settings
let g:tern_map_keys = 1
let g:tern_show_argument_hints = 'on_hold'

" Emmet settings
let g:user_emmet_leader_key='<C-E>'

" CtrlP settigns
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['package.json', 'bower.json', '.bowerrc']
"let g:ctrlp_custom_ignore =

" indentLine
"let g:indentLine_char = '┆'
"let g:indentLine_faster = 1

" vim-polyglot
" let g:polyglot_disabled = ['javascript']



"
" Main options
"

syntax enable
set background=dark
colorscheme PaperColor
" colorscheme flattown
"colorscheme base16-ocean
"colorscheme base16-railscasts
set autoindent

" Read file when external changes are applied
set autoread

" set map leader to <space>
let mapleader = ' '
let maplocalleader = '  '

" change history to 1000
set history=1000

set textwidth=120

" Set <Tab> as space (Crl-V<TAB>)
"set expandtab
"set shiftwidth=2
"set softtabstop=2

" Tab control

" Insert tabs rather than spaces for <Tab>
set noexpandtab
" Tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set smarttab
" The visible width of tabs
set tabstop=2
" Edit as if the tabs are 2 characters wide
set softtabstop=2
" Number of spaces to use for indent and unindent
set shiftwidth=2
" Round indent to a multiple of shiftwidth
set shiftround

"set statusline=%#warningmsg#
"set statusline+=%{SyntasticStatusLineFlag()}
"set statusline+=%*
set statusline+=\ %#ErrorMsg#%{neomake#statusline#QflistStatus('qf:\ ')}

set number
set relativenumber
set ruler
set scrolloff=0
set showmatch
set showcmd
set clipboard=unnamed
set mouse="nv"

" Turn on line wrapping
set wrap
set autoindent
set smartindent
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*/log/*,*/node_modules/*,*/target/**,*/lib/**

" toggle invisible characters
set invlist
set list
"set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮,space:␣
set listchars=tab:┆\ ,eol:¬,trail:⋅,extends:❯,precedes:❮,space:·
highlight SpecialKey ctermbg=none " make the highlighting of tabs less annoying
set showbreak=↪

" Highlight current line
set cursorline

" error bells
set noerrorbells
set visualbell
set tm=500

set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=1

"
" Functions
"

function! NumberToggle()
	if(&relativenumber == 1)
		set norelativenumber
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
nnoremap <c-i> :tabprevious<cr>
nnoremap <c-o> :tabnext<cr>
"nnoremap <silent> <a-left> :execute 'silent! tabnove ' . (tabpagenr() - 2)<cr>
"nnoremap <silent> <a-right> :execute 'silent! tabmove ' . tabpagenr() <cr>

map <leader>e :Explore<cr>
map <s-k> <Nop>
map <leader>l :set list!<cr>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>
