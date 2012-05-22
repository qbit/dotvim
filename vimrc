set nocompatible
filetype off

if has( 'win32' )
	set runtimepath=~/Documents/GitHub/dotvim,$VIM,$VIMRUNTIME
endif

if has( 'gui_running' )
	set guioptions-=T
	set guioptions-=m
	set vb t_vb=
endif

set rtp+=~/.vim/bundle/vundle/

call vundle#rc()

nmap <Leader>bi :BundleInstall<CR>
nmap <Leader>bi! :BundleInstall!<CR>
nmap <Leader>bu :BundleInstall!<CR>
nmap <Leader>bc :BundleClean<CR>

Bundle 'gmarik/vundle'

Bundle 'tComment'
Bundle 'current-func-info.vim'
Bundle 'vim-json-bundle'

Bundle 'tpope/vim-fugitive'

Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'

Bundle 'kien/ctrlp.vim'

" Color
if has('syntax')
	if &t_Co == 256
		syntax on
		colorscheme BusyBee
		set term=screen-256color
		" colo inkpot
		" let g:inkpot_black_background = 0
	else 
		colo pablo
	endif
endif

" File type stuff
filetype indent plugin on

" Options
set dir=~/.vim/swaps
set nolist
set visualbell
set mouse-=a
set textwidth=72

if ( v:version >= 700 ) 
	set listchars=tab:▸\ ,eol:¬
endif

set ts=4 sts=4 sw=4 noexpandtab
set laststatus=2
"set statusline=%<%f%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P
set statusline=%F\ %m\ %{fugitive#statusline()}\ %y%=line:%l,col:%c\ %P
set hlsearch
set incsearch
set showmatch
"set wrap!
set title
set nu
set fileformats+=mac
set ai
set scrolloff=10

" Syntastic
let g:syntastic_enable_signs = 1
let g:syntastic_check_on_open = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_javascript_jslint_conf = " --white --plusplus --nomen --newcap"

" NerdTree
let g:NERDTreeChristmasTree = 1
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeQuietOnOpen = 1
let g:NERDTreeShowBookmarks = 1 

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

au BufNewFile *.html 0read ~/.vim/skel/skel.html
au BufNewFile *.pl 0read ~/.vim/skel/skel.pl
au BufNewFile *.go 0read ~/.vim/skel/skel.go

nmap <leader>l :set wrap!<CR>
nmap <leader>s :set spell!<CR>
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
au BufNewFile,BufRead /tmp/mutt*,/tmp/cvs*,*.txt set tw=72 noai noshowmatch
au BufNewFile,BufRead /tmp/mutt*,/tmp/cvs*,*.txt setlocal spell spelllang=en_us

au BufNewFile,BufRead /private/var/*/mutt* set tw=72 noai noshowmatch
au BufNewFile,BufRead /private/var/*/mutt* setlocal spell spelllang=en_us

" git commits
au BufNewFile,BufRead *.git/COMMIT_EDITMSG set tw=72 noai noshowmatch
au BufNewFile,BufRead *.git/COMMIT_EDITMSG setlocal spell spelllang=en_us
