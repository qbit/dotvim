" This scheme was created by CSApproxSnapshot
" on Tue, 31 Jan 2012

hi clear
if exists("syntax_on")
    syntax reset
endif

if v:version < 700
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" substitute(substitute(<q-args>, "undercurl", "underline", "g"), "guisp\\S\\+", "", "g")
else
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" <q-args>
endif

function! s:old_kde()
  " Konsole only used its own palette up til KDE 4.2.0
  if executable('kde4-config') && system('kde4-config --kde-version') =~ '^4.[10].'
    return 1
  elseif executable('kde-config') && system('kde-config --version') =~# 'KDE: 3.'
    return 1
  else
    return 0
  endif
endfunction

if 0
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_konsole") && g:CSApprox_konsole) || (&term =~? "^konsole" && s:old_kde())
    CSAHi Normal term=NONE cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#e2e2e5 guisp=#202020
    CSAHi EnumerationValue term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=254 gui=NONE guibg=#ff0000 guifg=#e2e4e5
    CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=245 gui=NONE guibg=#ffff00 guifg=#8f8f8f
    CSAHi Underlined term=underline cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=241 gui=NONE guibg=bg guifg=#606060
    CSAHi Character term=NONE cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#ff9800
    CSAHi phpStringSingle term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=59 ctermfg=59 gui=NONE guibg=#343434 guifg=#808080 guisp=#343434
    CSAHi NonText term=bold cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#808080 guisp=#202020
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=254 gui=NONE guibg=#ff0000 guifg=#e2e2e5
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Search term=reverse cterm=NONE ctermbg=226 ctermfg=254 gui=NONE guibg=#ffff00 guifg=#e2e4e5
    CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi ModeMsg term=bold cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e2e5
    CSAHi LineNr term=underline cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#303030 guisp=#202020
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Debug term=NONE cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#ff9800
    CSAHi CTagsClass term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CTagsGlobalConstant term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CTagsGlobalVariable term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CTagsImport term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CTagsMember term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi SpellLocal term=underline cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#e2e4e5 guisp=#00ffff
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#ffffff guisp=#202020
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=149 ctermfg=149 gui=NONE guibg=#b1d631 guifg=#000000 guisp=#b1d631
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#ffffff guisp=#202020
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#ffffff guisp=#303030
    CSAHi TabLine term=underline cterm=NONE ctermbg=248 ctermfg=254 gui=NONE guibg=#a9a9a9 guifg=#e2e4e5
    CSAHi TabLineSel term=bold cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#e2e4e5 guisp=#202020
    CSAHi CursorLine term=underline cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#e2e4e5 guisp=#202020
    CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Tag term=NONE cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=149 gui=NONE guibg=bg guifg=#b1d631
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=226 gui=NONE guibg=bg guifg=#ffff00
    CSAHi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Repeat term=NONE cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Label term=NONE cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Question term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e2e5
    CSAHi StatusLine term=bold,reverse cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#d3d3d5 guisp=#303030
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#939395 guisp=#303030
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#444444 guisp=#303030
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=231 gui=bold guibg=bg guifg=#f6f3e8
    CSAHi Visual term=reverse cterm=NONE ctermbg=59 ctermfg=59 gui=NONE guibg=#3c414c guifg=#faf4c6 guisp=#3c414c
    CSAHi VisualNOS term=bold,underline cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=254 gui=NONE guibg=#ffff00 guifg=#e2e4e5
    CSAHi Folded term=NONE cterm=NONE ctermbg=59 ctermfg=59 gui=NONE guibg=#384048 guifg=#a0a8b0 guisp=#384048
    CSAHi LocalVariable term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Union term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi pythonBuiltin term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e2e5
    CSAHi JavaScriptStrings term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#ff9800
    CSAHi phpStringDouble term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi htmlString term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e2e5
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=124 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=241 ctermfg=241 gui=NONE guibg=#626262 guifg=#e2e2e5 guisp=#626262
    CSAHi lCursor term=NONE cterm=NONE ctermbg=254 ctermfg=234 gui=NONE guibg=#e2e2e5 guifg=#202020
    CSAHi MatchParen term=reverse cterm=bold ctermbg=234 ctermfg=234 gui=bold guibg=#202020 guifg=#d0ffc0 guisp=#202020
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=237 gui=italic guibg=bg guifg=#3f3f3f
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=149 gui=NONE guibg=bg guifg=#b1d631
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=#faf4c6
    CSAHi htmlTagName term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e2e5
    CSAHi DefinedName term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi EnumerationName term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Include term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=#faf4c6
    CSAHi Define term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=#faf4c6
    CSAHi Macro term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=#faf4c6
    CSAHi PreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=#faf4c6
    CSAHi StorageClass term=NONE cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=250 ctermfg=254 gui=NONE guibg=#bebebe guifg=#e2e4e5
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=19 ctermfg=254 gui=NONE guibg=#00008b guifg=#e2e2e5
    CSAHi DiffChange term=bold cterm=NONE ctermbg=127 ctermfg=254 gui=NONE guibg=#8b008b guifg=#e2e2e5
    CSAHi DiffDelete term=bold cterm=NONE ctermbg=37 ctermfg=254 gui=NONE guibg=#008b8b guifg=#e2e2e5
    CSAHi DiffText term=reverse cterm=NONE ctermbg=196 ctermfg=214 gui=NONE guibg=#ff0000 guifg=#ff9800
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=254 gui=NONE guibg=#bebebe guifg=#e2e4e5
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#e2e4e5 guisp=#ff0000
    CSAHi SpellCap term=reverse cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#e2e4e5 guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=NONE ctermbg=bg ctermfg=201 gui=NONE guibg=bg guifg=#e2e4e5 guisp=#ff00ff
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_eterm") && g:CSApprox_eterm) || &term =~? "^eterm"
    CSAHi Normal term=NONE cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#e2e2e5 guisp=#202020
    CSAHi EnumerationValue term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=220 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=254 gui=NONE guibg=#ff0000 guifg=#e2e4e5
    CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=245 gui=NONE guibg=#ffff00 guifg=#8f8f8f
    CSAHi Underlined term=underline cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=241 gui=NONE guibg=bg guifg=#606060
    CSAHi Character term=NONE cterm=NONE ctermbg=bg ctermfg=220 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=220 gui=NONE guibg=bg guifg=#ff9800
    CSAHi phpStringSingle term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#343434 guifg=#808080 guisp=#343434
    CSAHi NonText term=bold cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#808080 guisp=#202020
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=254 gui=NONE guibg=#ff0000 guifg=#e2e2e5
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Search term=reverse cterm=NONE ctermbg=226 ctermfg=254 gui=NONE guibg=#ffff00 guifg=#e2e4e5
    CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi ModeMsg term=bold cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e2e5
    CSAHi LineNr term=underline cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#303030 guisp=#202020
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=220 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Debug term=NONE cterm=NONE ctermbg=bg ctermfg=220 gui=NONE guibg=bg guifg=#ff9800
    CSAHi CTagsClass term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CTagsGlobalConstant term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CTagsGlobalVariable term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CTagsImport term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CTagsMember term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi SpellLocal term=underline cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#e2e4e5 guisp=#00ffff
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#ffffff guisp=#202020
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=191 ctermfg=191 gui=NONE guibg=#b1d631 guifg=#000000 guisp=#b1d631
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#ffffff guisp=#202020
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#ffffff guisp=#303030
    CSAHi TabLine term=underline cterm=NONE ctermbg=248 ctermfg=254 gui=NONE guibg=#a9a9a9 guifg=#e2e4e5
    CSAHi TabLineSel term=bold cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#e2e4e5 guisp=#202020
    CSAHi CursorLine term=underline cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#e2e4e5 guisp=#202020
    CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=220 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Tag term=NONE cterm=NONE ctermbg=bg ctermfg=220 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=220 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=191 gui=NONE guibg=bg guifg=#b1d631
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=220 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=226 gui=NONE guibg=bg guifg=#ffff00
    CSAHi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Repeat term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Label term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Question term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e2e5
    CSAHi StatusLine term=bold,reverse cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#d3d3d5 guisp=#303030
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#939395 guisp=#303030
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#444444 guisp=#303030
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=231 gui=bold guibg=bg guifg=#f6f3e8
    CSAHi Visual term=reverse cterm=NONE ctermbg=66 ctermfg=66 gui=NONE guibg=#3c414c guifg=#faf4c6 guisp=#3c414c
    CSAHi VisualNOS term=bold,underline cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=254 gui=NONE guibg=#ffff00 guifg=#e2e4e5
    CSAHi Folded term=NONE cterm=NONE ctermbg=66 ctermfg=66 gui=NONE guibg=#384048 guifg=#a0a8b0 guisp=#384048
    CSAHi LocalVariable term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Union term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi pythonBuiltin term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e2e5
    CSAHi JavaScriptStrings term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=220 gui=NONE guibg=bg guifg=#ff9800
    CSAHi phpStringDouble term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi htmlString term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e2e5
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=124 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=241 ctermfg=241 gui=NONE guibg=#626262 guifg=#e2e2e5 guisp=#626262
    CSAHi lCursor term=NONE cterm=NONE ctermbg=254 ctermfg=234 gui=NONE guibg=#e2e2e5 guifg=#202020
    CSAHi MatchParen term=reverse cterm=bold ctermbg=234 ctermfg=234 gui=bold guibg=#202020 guifg=#d0ffc0 guisp=#202020
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=237 gui=italic guibg=bg guifg=#3f3f3f
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=220 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=191 gui=NONE guibg=bg guifg=#b1d631
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#faf4c6
    CSAHi htmlTagName term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e2e5
    CSAHi DefinedName term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi EnumerationName term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Include term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#faf4c6
    CSAHi Define term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#faf4c6
    CSAHi Macro term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#faf4c6
    CSAHi PreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#faf4c6
    CSAHi StorageClass term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=250 ctermfg=254 gui=NONE guibg=#bebebe guifg=#e2e4e5
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=19 ctermfg=254 gui=NONE guibg=#00008b guifg=#e2e2e5
    CSAHi DiffChange term=bold cterm=NONE ctermbg=127 ctermfg=254 gui=NONE guibg=#8b008b guifg=#e2e2e5
    CSAHi DiffDelete term=bold cterm=NONE ctermbg=37 ctermfg=254 gui=NONE guibg=#008b8b guifg=#e2e2e5
    CSAHi DiffText term=reverse cterm=NONE ctermbg=196 ctermfg=220 gui=NONE guibg=#ff0000 guifg=#ff9800
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=254 gui=NONE guibg=#bebebe guifg=#e2e4e5
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=231 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#e2e4e5 guisp=#ff0000
    CSAHi SpellCap term=reverse cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#e2e4e5 guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=NONE ctermbg=bg ctermfg=201 gui=NONE guibg=bg guifg=#e2e4e5 guisp=#ff00ff
elseif has("gui_running") || &t_Co == 256
    CSAHi Normal term=NONE cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#e2e2e5 guisp=#202020
    CSAHi EnumerationValue term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=254 gui=NONE guibg=#ff0000 guifg=#e2e4e5
    CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=245 gui=NONE guibg=#ffff00 guifg=#8f8f8f
    CSAHi Underlined term=underline cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=59 gui=NONE guibg=bg guifg=#606060
    CSAHi Character term=NONE cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#ff9800
    CSAHi phpStringSingle term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#343434 guifg=#808080 guisp=#343434
    CSAHi NonText term=bold cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#808080 guisp=#202020
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=254 gui=NONE guibg=#ff0000 guifg=#e2e2e5
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Search term=reverse cterm=NONE ctermbg=226 ctermfg=254 gui=NONE guibg=#ffff00 guifg=#e2e4e5
    CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi ModeMsg term=bold cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e2e5
    CSAHi LineNr term=underline cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#303030 guisp=#202020
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Debug term=NONE cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#ff9800
    CSAHi CTagsClass term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CTagsGlobalConstant term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CTagsGlobalVariable term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CTagsImport term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CTagsMember term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi SpellLocal term=underline cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#e2e4e5 guisp=#00ffff
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#ffffff guisp=#202020
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=149 ctermfg=149 gui=NONE guibg=#b1d631 guifg=#000000 guisp=#b1d631
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#ffffff guisp=#202020
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#ffffff guisp=#303030
    CSAHi TabLine term=underline cterm=NONE ctermbg=248 ctermfg=254 gui=NONE guibg=#a9a9a9 guifg=#e2e4e5
    CSAHi TabLineSel term=bold cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#e2e4e5 guisp=#202020
    CSAHi CursorLine term=underline cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#e2e4e5 guisp=#202020
    CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Tag term=NONE cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=149 gui=NONE guibg=bg guifg=#b1d631
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=226 gui=NONE guibg=bg guifg=#ffff00
    CSAHi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Repeat term=NONE cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Label term=NONE cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Question term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e2e5
    CSAHi StatusLine term=bold,reverse cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#d3d3d5 guisp=#303030
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#939395 guisp=#303030
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#444444 guisp=#303030
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=230 gui=bold guibg=bg guifg=#f6f3e8
    CSAHi Visual term=reverse cterm=NONE ctermbg=59 ctermfg=59 gui=NONE guibg=#3c414c guifg=#faf4c6 guisp=#3c414c
    CSAHi VisualNOS term=bold,underline cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=254 gui=NONE guibg=#ffff00 guifg=#e2e4e5
    CSAHi Folded term=NONE cterm=NONE ctermbg=59 ctermfg=59 gui=NONE guibg=#384048 guifg=#a0a8b0 guisp=#384048
    CSAHi LocalVariable term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Union term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi pythonBuiltin term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e2e5
    CSAHi JavaScriptStrings term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#ff9800
    CSAHi phpStringDouble term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi htmlString term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e2e5
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=88 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=241 ctermfg=241 gui=NONE guibg=#626262 guifg=#e2e2e5 guisp=#626262
    CSAHi lCursor term=NONE cterm=NONE ctermbg=254 ctermfg=234 gui=NONE guibg=#e2e2e5 guifg=#202020
    CSAHi MatchParen term=reverse cterm=bold ctermbg=234 ctermfg=234 gui=bold guibg=#202020 guifg=#d0ffc0 guisp=#202020
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=237 gui=italic guibg=bg guifg=#3f3f3f
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=149 gui=NONE guibg=bg guifg=#b1d631
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=#faf4c6
    CSAHi htmlTagName term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e2e5
    CSAHi DefinedName term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi EnumerationName term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Include term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=#faf4c6
    CSAHi Define term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=#faf4c6
    CSAHi Macro term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=#faf4c6
    CSAHi PreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=#faf4c6
    CSAHi StorageClass term=NONE cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=250 ctermfg=254 gui=NONE guibg=#bebebe guifg=#e2e4e5
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=18 ctermfg=254 gui=NONE guibg=#00008b guifg=#e2e2e5
    CSAHi DiffChange term=bold cterm=NONE ctermbg=90 ctermfg=254 gui=NONE guibg=#8b008b guifg=#e2e2e5
    CSAHi DiffDelete term=bold cterm=NONE ctermbg=30 ctermfg=254 gui=NONE guibg=#008b8b guifg=#e2e2e5
    CSAHi DiffText term=reverse cterm=NONE ctermbg=196 ctermfg=208 gui=NONE guibg=#ff0000 guifg=#ff9800
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=254 gui=NONE guibg=#bebebe guifg=#e2e4e5
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#e2e4e5 guisp=#ff0000
    CSAHi SpellCap term=reverse cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#e2e4e5 guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=NONE ctermbg=bg ctermfg=201 gui=NONE guibg=bg guifg=#e2e4e5 guisp=#ff00ff
elseif has("gui_running") || &t_Co == 88
    CSAHi Normal term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#202020 guifg=#e2e2e5 guisp=#202020
    CSAHi EnumerationValue term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Error term=reverse cterm=NONE ctermbg=64 ctermfg=87 gui=NONE guibg=#ff0000 guifg=#e2e4e5
    CSAHi Todo term=NONE cterm=NONE ctermbg=76 ctermfg=83 gui=NONE guibg=#ffff00 guifg=#8f8f8f
    CSAHi Underlined term=underline cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=81 gui=NONE guibg=bg guifg=#606060
    CSAHi Character term=NONE cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#ff9800
    CSAHi phpStringSingle term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#343434 guifg=#808080 guisp=#343434
    CSAHi NonText term=bold cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#202020 guifg=#808080 guisp=#202020
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=64 ctermfg=87 gui=NONE guibg=#ff0000 guifg=#e2e2e5
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Search term=reverse cterm=NONE ctermbg=76 ctermfg=87 gui=NONE guibg=#ffff00 guifg=#e2e4e5
    CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi ModeMsg term=bold cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e2e5
    CSAHi LineNr term=underline cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#202020 guifg=#303030 guisp=#202020
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Debug term=NONE cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#ff9800
    CSAHi CTagsClass term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CTagsGlobalConstant term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CTagsGlobalVariable term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CTagsImport term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CTagsMember term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi SpellLocal term=underline cterm=NONE ctermbg=bg ctermfg=31 gui=NONE guibg=bg guifg=#e2e4e5 guisp=#00ffff
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#202020 guifg=#ffffff guisp=#202020
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=56 ctermfg=56 gui=NONE guibg=#b1d631 guifg=#000000 guisp=#b1d631
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#202020 guifg=#ffffff guisp=#202020
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#ffffff guisp=#303030
    CSAHi TabLine term=underline cterm=NONE ctermbg=84 ctermfg=87 gui=NONE guibg=#a9a9a9 guifg=#e2e4e5
    CSAHi TabLineSel term=bold cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#202020 guifg=#e2e4e5 guisp=#202020
    CSAHi CursorLine term=underline cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#202020 guifg=#e2e4e5 guisp=#202020
    CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Tag term=NONE cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=56 gui=NONE guibg=bg guifg=#b1d631
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=76 gui=NONE guibg=bg guifg=#ffff00
    CSAHi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Repeat term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Label term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Question term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e2e5
    CSAHi StatusLine term=bold,reverse cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#d3d3d5 guisp=#303030
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#939395 guisp=#303030
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#444444 guisp=#303030
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=79 gui=bold guibg=bg guifg=#f6f3e8
    CSAHi Visual term=reverse cterm=NONE ctermbg=17 ctermfg=17 gui=NONE guibg=#3c414c guifg=#faf4c6 guisp=#3c414c
    CSAHi VisualNOS term=bold,underline cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=76 ctermfg=87 gui=NONE guibg=#ffff00 guifg=#e2e4e5
    CSAHi Folded term=NONE cterm=NONE ctermbg=17 ctermfg=17 gui=NONE guibg=#384048 guifg=#a0a8b0 guisp=#384048
    CSAHi LocalVariable term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Union term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi pythonBuiltin term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e2e5
    CSAHi JavaScriptStrings term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#ff9800
    CSAHi phpStringDouble term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi htmlString term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e2e5
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=32 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=81 ctermfg=81 gui=NONE guibg=#626262 guifg=#e2e2e5 guisp=#626262
    CSAHi lCursor term=NONE cterm=NONE ctermbg=87 ctermfg=80 gui=NONE guibg=#e2e2e5 guifg=#202020
    CSAHi MatchParen term=reverse cterm=bold ctermbg=80 ctermfg=80 gui=bold guibg=#202020 guifg=#d0ffc0 guisp=#202020
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=80 gui=italic guibg=bg guifg=#3f3f3f
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=56 gui=NONE guibg=bg guifg=#b1d631
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=78 gui=NONE guibg=bg guifg=#faf4c6
    CSAHi htmlTagName term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e2e5
    CSAHi DefinedName term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi EnumerationName term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Include term=NONE cterm=NONE ctermbg=bg ctermfg=78 gui=NONE guibg=bg guifg=#faf4c6
    CSAHi Define term=NONE cterm=NONE ctermbg=bg ctermfg=78 gui=NONE guibg=bg guifg=#faf4c6
    CSAHi Macro term=NONE cterm=NONE ctermbg=bg ctermfg=78 gui=NONE guibg=bg guifg=#faf4c6
    CSAHi PreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=78 gui=NONE guibg=bg guifg=#faf4c6
    CSAHi StorageClass term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=85 ctermfg=87 gui=NONE guibg=#bebebe guifg=#e2e4e5
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=17 ctermfg=87 gui=NONE guibg=#00008b guifg=#e2e2e5
    CSAHi DiffChange term=bold cterm=NONE ctermbg=33 ctermfg=87 gui=NONE guibg=#8b008b guifg=#e2e2e5
    CSAHi DiffDelete term=bold cterm=NONE ctermbg=21 ctermfg=87 gui=NONE guibg=#008b8b guifg=#e2e2e5
    CSAHi DiffText term=reverse cterm=NONE ctermbg=64 ctermfg=68 gui=NONE guibg=#ff0000 guifg=#ff9800
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=85 ctermfg=87 gui=NONE guibg=#bebebe guifg=#e2e4e5
    CSAHi Conceal term=NONE cterm=NONE ctermbg=84 ctermfg=86 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=NONE ctermbg=bg ctermfg=64 gui=NONE guibg=bg guifg=#e2e4e5 guisp=#ff0000
    CSAHi SpellCap term=reverse cterm=NONE ctermbg=bg ctermfg=19 gui=NONE guibg=bg guifg=#e2e4e5 guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=NONE ctermbg=bg ctermfg=67 gui=NONE guibg=bg guifg=#e2e4e5 guisp=#ff00ff
endif

if 1
    delcommand CSAHi
endif
