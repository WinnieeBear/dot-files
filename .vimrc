" file type detetion eanble file type detection
filetype on

" based on detected file type load different plugin
filetype plugin on

" enable real time increase search
set incsearch

" search ignore case sensitive
set ignorecase

" always show status bar
set laststatus=2

" show the cursor position
set ruler

" show the row number
set number

" highlight current row and column
"set cursorline
"set cursorcolumn

" hightlight the search result
set hlsearch
"hi Search cterm=NONE ctermfg=grey ctermbg=blue

" disallow to wrap to another line
"set nowrap

" set status bar theme
"let g:Powerline_colorscheme='solarized256'

" enable the grammer highlight
syntax enable
" enalbe to use the specified color
syntax on

" define the short cut prefix. i.e. <Leader>
let mapleader=";"

" set shortcut to make <Leader>y "+y to yank " I think it's "*y
vnoremap <Leader>y "+y
" set shortcut to make <Leader>y "+y to copy
nmap <Leader>p "+p

" for macOSX cut and copy to OSX clipboard
vmap <C-x> :!pbcopy<CR>  
vmap <C-c> :w !pbcopy<CR>

" set shortcut to walk through the subwindow walkthrouth by order
nnoremap nw <C-W><C-W>
" jump to the right window
nnoremap <Leader>lw <C-W>l
" jump to the left window
nnoremap <Leader>hw <C-W>h
" jump to the upward window
nnoremap <Leader>kw <C-W>k
" jump to the downward window
nnoremap <Leader>jw <C-W>j

" jump between pair tags
nmap <Leader>M %

" let the vim conf make effet immediately
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" auto adapt to the varrious language to indent
filetype indent on

" enable real time increase search
set incsearch

" search ignore case sensitive
set ignorecase

" close compatible mode
set nocompatible

" vim command mode auto complete
set wildmenu

" enable jump to another buffer when the buffer not be write
set hidden

" vundle env settings
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" for the plugin installed all locate between vundle#begin() and vundle#end()
call vundle#begin()

Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'gnattishness/cscope_maps'
Plugin 'junegunn/fzf'
Plugin 'kshenoy/vim-signature'
Plugin 'dyng/ctrlsf.vim'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'Chiel92/vim-autoformat'


" pulgin list end
call vundle#end()
filetype plugin indent on

" color scheme
set background=dark
set t_Co=16
"colorscheme solarized
colorscheme desert
"colorscheme molokai
"colorscheme phd

" ban the blink 
" set gcr=a:block-blinkon0

" ban the scroll bar
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" disallow to show menu and task bar
set guioptions-=m
set guioptions-=T

" set the tab to space
set expandtab
" set the table length for space
set tabstop=4
" set the space table length number
set shiftwidth=4
" let vim to take contiunes space to be table
set softtabstop=4

" pulgin for Indent Guides
let g:indent_guides_enable_on_vim_startup=1
" Indent from the second layer
let g:indent_guides_start_level=2
" colorscheme width
let g:indent_guides_guide_size=1
" shortcut i to enalbe/disable the indent
nmap <silent> <Leader>i <Plug>IndentGuidesToggle


" based on indent or grammer to fold
"set foldmethod=indent
set foldmethod=syntax
" disable fold when lauch vim
set nofoldenable

" self define vim-signature shortcut
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "ms",
        \ 'ListLocalMarkers'   :  "m?"
        \ }

" set tagbar location on the left fo the main window
let tagbar_left=1

" set tagbar windows width
let tagbar_width=64

" set tagbar subwindow don't show reduntant info
let g:tagbar_compact=1
" set ctags to produce the tag for which kinds of code
let g:tagbar_type_cpp = {
     \ 'ctagstype' : 'c++',
     \ 'kinds'     : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0', 
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }

 
" set plugin indexer to call ctags prameter
" by default --c++-kinds=p+l, we set as --c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v
" by default --fields=+iaS not satisfied YCM，need to be changed to --fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"
 
" show/hide MiniBufExplorer window
map <Leader>bl :MBEToggle<cr>

"indent guides color change
let indent_guides_auto_colors = 0
hi IndentGuidesOdd ctermbg=236
hi IndentGuidesEven ctermbg=237

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

let g:formatterpath = ['/home/cfguo/.clang-format', '/usr/bin/clang-format']
