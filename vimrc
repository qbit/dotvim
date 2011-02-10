if has('syntax')
	set t_Co=256
	syntax on
	colorscheme inkpot_converted
	let g:inkpot_black_background = 1
endif

"File type stuff
filetype off

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype indent on
filetype plugin on

set nolist
set visualbell
set mouse-=a
set textwidth=78

if ( v:version >= 700 ) 
	set listchars=tab:▸\ ,eol:¬
endif

set ts=4 sts=4 sw=4 noexpandtab
set nocompatible
set laststatus=2
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P
set hlsearch
set incsearch
set showmatch
set wrap!
set title
set nu
set fileformats+=mac
set ai

" NO MORE MOOSE! YAY!
nmap <silent> ,/ :let @/=""<CR>

"Fuck up the nubs
noremap <Left>  <NOP>
noremap <Right> <NOP>
noremap <Up>    <NOP>
noremap <Down>  <NOP>

" function! ErlPretty()
"     silent !erl -noshell -eval 'erl_tidy:file("%",[verbose]).' -s erlang halt
" endfunction

function ModeChange()
	if getline(1) =~ "^#!/"
		if getline(1) =~ "/bin/"
			"silent !chmod a+x <afile>
		endif
	endif
endfunction

" Copy matches of the last search to a register (default is the clipboard).
" Accepts a range (default is whole file).
" 'CopyMatches'   copy matches to clipboard (each match has \n added).
" 'CopyMatches x' copy matches to register x (clears register first).
" 'CopyMatches X' append matches to register x.
" We skip empty hits to ensure patterns using '\ze' don't loop forever.
command! -range=% -register CopyMatches call s:CopyMatches(<line1>, <line2>, '<reg>')
function! s:CopyMatches(line1, line2, reg)
  let hits = []
  for line in range(a:line1, a:line2)
    let txt = getline(line)
    let idx = match(txt, @/)
    while idx >= 0
      let end = matchend(txt, @/, idx)
      if end > idx
	call add(hits, strpart(txt, idx, end-idx))
      else
	let end += 1
      endif
      if @/[0] == '^'
        break  " to avoid false hits
      endif
      let idx = match(txt, @/, end)
    endwhile
  endfor
  if len(hits) > 0
    let reg = empty(a:reg) ? '+' : a:reg
    execute 'let @'.reg.' = join(hits, "\n") . "\n"'
  else
    echo 'No hits'
  endif
endfunction


"nmap ep :execute ErlPretty()

au BufWritePost * call ModeChange()
au BufNewFile *.html 0read ~/.vim/skel/skel.html
au BufNewFile *.pl 0read ~/.vim/skel/skel.pl
au BufNewFile *.go 0read ~/.vim/skel/skel.go

cmap w!! w !sudo tee % >/dev/null

nmap <leader>p :!perl -Wc %<C-M>
nmap <leader>l :set wrap!<CR>
nmap <leader>h :Vimwiki2HTML<CR>
nmap <leader>s :set spell!<CR>
nmap <leader>1 :NERDTree<CR>
nmap <leader>2 :set list!<CR>
nmap <leader>3 :set nu!<CR>
nmap <leader>4 :set paste!<CR>
