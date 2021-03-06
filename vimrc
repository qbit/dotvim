set nocompatible
filetype off

if has( 'win32' )
endif

if has( 'gui_running' )
	if has( "gui_win32" )
		set runtimepath=~/Documents/GitHub/dotvim,$VIM,$VIMRUNTIME
		set guifont=Anonymous\ Pro:h10
		set guioptions-=T
		set guioptions-=m
		set noeb
	endif
endif

set rtp+=~/.vim/bundle/vundle/

call vundle#rc()

nmap <Leader>bi :BundleInstall<CR>
nmap <Leader>bi! :BundleInstall!<CR>
nmap <Leader>bu :BundleInstall!<CR>
nmap <Leader>bc :BundleClean<CR>

nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gc :Gcommit<CR>

Bundle 'gmarik/vundle'

Bundle 'https://qbit_@bitbucket.org/kisom/eink.vim.git'

Bundle 'tComment'
Bundle 'current-func-info.vim'
Bundle 'vim-json-bundle'

Bundle 'wlangstroth/vim-racket'

Bundle 'farseer90718/vim-taskwarrior'

Bundle 'airblade/vim-gitgutter'
Bundle 'marijnh/tern_for_vim'

Bundle 'tpope/vim-fugitive'

Bundle 'scrooloose/syntastic'
" Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-vinegar'

Bundle 'kien/ctrlp.vim'

" Bundle 'Lokaltog/vim-powerline'
Bundle 'bling/vim-airline'

Bundle 'uggedal/go-vim'

Bundle 'gregsexton/MatchTag'

Bundle 'qbit/taskwarrior-vim'

Bundle 'qbit/vim-startify'

" Color
if has('syntax')
  syntax on
  set term=screen-256color
  set background=dark
  " colorscheme BusyBee
  colorscheme coffee
else
  colorscheme eink
endif

" File type stuff
filetype indent plugin on

" Options
set dir=~/.vim/swaps
set nolist
set visualbell
set lazyredraw
set mouse-=a
" set tw=72

" Folding
set foldopen+=search
set foldminlines=1
set foldmethod=expr
" let javaScript_fold = 1

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#whitespace#enabled=1
let g:airline_enable_syntastic=1
let g:airline_enable_fugitive=1
let g:airline_theme='dark'

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_linecolumn_prefix = '¶ '
let g:airline_paste_symbol = 'ρ'
let g:airline_paste_symbol = 'Þ'
let g:airline_readonly_symbol = 'r'

let g:startify_custom_cmd = ['   [w]  Task Warrior', 'nnoremap <buffer><silent> w :TW<cr>']

if ( v:version >= 700 )
	set listchars=tab:▸\ ,eol:¬
endif

" set ts=2 sts=2 sw=2 expandtab
set laststatus=2
"set statusline=%<%f%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P
" set statusline=%F\ %m\ %{fugitive#statusline()}\ %y%=line:%l,col:%c\ %P
set hlsearch
set incsearch
set showmatch
"set wrap!
set title
set nu
set fileformats+=mac
set ai
set scrolloff=10

let g:gitgutter_realtime = 0

" Syntastic
let g:syntastic_enable_signs = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_javascript_jslint_conf = " --white --plusplus --nomen --newcap --evil"

let tern#is_show_argument_hints_enabled = 1
let g:stop_autocomplete=0

" PowerLine
" let g:Powerline_symbols = 'fancy'

" Commands
command! -bar -nargs=0 W  silent! exec "write !sudo tee % >/dev/null"  | silent! edit!

" NO MORE MOOSE! YAY!
nmap <silent> ,/ :let @/=""<CR>

nnoremap <silent> <leader>g :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>

"Fuck up the nubs
noremap <Left>  <NOP>
noremap <Right> <NOP>
noremap <Up>    <NOP>
noremap <Down>  <NOP>

noremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<cr>
vnoremap <Space> zf

au BufNewFile *.html 0read ~/.vim/skel/skel.html
au BufNewFile *.pl 0read ~/.vim/skel/skel.pl
au BufNewFile *.go 0read ~/.vim/skel/skel.go

nmap <leader>l :set wrap!<CR>
nmap <leader>sp :set spell!<CR>
nmap <leader>s :%s/\s\+$//g<CR>
nmap <leader>1 :NERDTree<CR>
nmap <leader>2 :set list!<CR>
nmap <leader>3 :set nu!<CR>
nmap <leader>4 :set paste!<CR>

if has("autocmd")
	au BufRead,BufNewFile *.ejs setfiletype html
	au BufRead,BufNewFile *.pde setfiletype arduino
endif

" KNF violations
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.*/
let c_space_errors=1

" text & mutt files
au BufNewFile,BufRead /tmp/mutt*,/tmp/cvs*,*.txt set noai noshowmatch
au BufNewFile,BufRead /tmp/mutt*,/tmp/cvs*,*.txt setlocal spell spelllang=en_us

au BufNewFile,BufRead /private/var/*/mutt* set noai noshowmatch
au BufNewFile,BufRead /private/var/*/mutt* setlocal spell spelllang=en_us

" git commits
au BufNewFile,BufRead *.git/COMMIT_EDITMSG set noai noshowmatch
au BufNewFile,BufRead *.git/COMMIT_EDITMSG setlocal spell spelllang=en_us
