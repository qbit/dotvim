filetype off

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Color
if has('syntax')
	if &t_Co == 256
		syntax on
		colo inkpot_converted
		" colo inkpot
		let g:inkpot_black_background = 0
		" colo distinguished
	else 
		colo pablo
	endif
endif

" File type stuff
filetype indent on
filetype plugin on

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
set nocompatible
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
let g:syntastic_auto_loc_list = 1
let g:syntastic_jslint_conf = " --forin"

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
