" Vim color file
" Name:       inkpot.vim
" Maintainer: Ciaran McCreesh <ciaran.mccreesh@googlemail.com>
" Homepage:   http://github.com/ciaranm/inkpot/
"
" This should work in the GUI, rxvt-unicode (88 colour mode) and xterm (256
" colour mode). It won't work in 8/16 colour terminals.
"
" To use a black background, :let g:inkpot_black_background = 1

set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif

let colors_name = "inkpot"

" map a urxvt cube number to an xterm-256 cube number
fun! <SID>M(a)
    return strpart("0135", a:a, 1) + 0
endfun

" map a urxvt colour to an xterm-256 colour
fun! <SID>X(a)
    if &t_Co == 88
        return a:a
    else
        if a:a == 8
            return 237
        elseif a:a < 16
            return a:a
        elseif a:a > 79
            return 232 + (3 * (a:a - 80))
        else
            let l:b = a:a - 16
            let l:x = l:b % 4
            let l:y = (l:b / 4) % 4
            let l:z = (l:b / 16)
            return 16 + <SID>M(l:x) + (6 * <SID>M(l:y)) + (36 * <SID>M(l:z))
        endif
    endif
endfun

if ! exists("g:inkpot_black_background")
    let g:inkpot_black_background = 0
endif

if has("gui_running")
    if ! g:inkpot_black_background
        hi Normal         gui=NONE   guifg=#cfbfad ctermfg=sh: rgb2cterm: command not found   guibg=#1e1e27 ctermbg=sh: rgb2cterm: command not found
    else
        hi Normal         gui=NONE   guifg=#cfbfad ctermfg=sh: rgb2cterm: command not found   guibg=#000000 ctermbg=sh: rgb2cterm: command not found
    endif

    hi CursorLine         guibg=#2e2e37 ctermbg=sh: rgb2cterm: command not found

    hi IncSearch      gui=BOLD   guifg=#303030 ctermfg=sh: rgb2cterm: command not found   guibg=#cd8b60 ctermbg=sh: rgb2cterm: command not found
    hi Search         gui=NONE   guifg=#303030 ctermfg=sh: rgb2cterm: command not found   guibg=#ad7b57 ctermbg=sh: rgb2cterm: command not found
    hi ErrorMsg       gui=BOLD   guifg=#ffffff ctermfg=sh: rgb2cterm: command not found   guibg=#ce4e4e ctermbg=sh: rgb2cterm: command not found
    hi WarningMsg     gui=BOLD   guifg=#ffffff ctermfg=sh: rgb2cterm: command not found   guibg=#ce8e4e ctermbg=sh: rgb2cterm: command not found
    hi ModeMsg        gui=BOLD   guifg=#7e7eae ctermfg=sh: rgb2cterm: command not found   guibg=NONE
    hi MoreMsg        gui=BOLD   guifg=#7e7eae ctermfg=sh: rgb2cterm: command not found   guibg=NONE
    hi Question       gui=BOLD   guifg=#ffcd00 ctermfg=sh: rgb2cterm: command not found   guibg=NONE

    hi StatusLine     gui=BOLD   guifg=#b9b9b9 ctermfg=sh: rgb2cterm: command not found   guibg=#3e3e5e ctermbg=sh: rgb2cterm: command not found
    hi User1          gui=BOLD   guifg=#00ff8b ctermfg=sh: rgb2cterm: command not found   guibg=#3e3e5e ctermbg=sh: rgb2cterm: command not found
    hi User2          gui=BOLD   guifg=#7070a0 ctermfg=sh: rgb2cterm: command not found   guibg=#3e3e5e ctermbg=sh: rgb2cterm: command not found
    hi StatusLineNC   gui=NONE   guifg=#b9b9b9 ctermfg=sh: rgb2cterm: command not found   guibg=#3e3e5e ctermbg=sh: rgb2cterm: command not found
    hi VertSplit      gui=NONE   guifg=#b9b9b9 ctermfg=sh: rgb2cterm: command not found   guibg=#3e3e5e ctermbg=sh: rgb2cterm: command not found

    hi WildMenu       gui=BOLD   guifg=#eeeeee ctermfg=sh: rgb2cterm: command not found   guibg=#6e6eaf ctermbg=sh: rgb2cterm: command not found

    hi MBENormal                 guifg=#cfbfad ctermfg=sh: rgb2cterm: command not found   guibg=#2e2e3f ctermbg=sh: rgb2cterm: command not found
    hi MBEChanged                guifg=#eeeeee ctermfg=sh: rgb2cterm: command not found   guibg=#2e2e3f ctermbg=sh: rgb2cterm: command not found
    hi MBEVisibleNormal          guifg=#cfcfcd ctermfg=sh: rgb2cterm: command not found   guibg=#4e4e8f ctermbg=sh: rgb2cterm: command not found
    hi MBEVisibleChanged         guifg=#eeeeee ctermfg=sh: rgb2cterm: command not found   guibg=#4e4e8f ctermbg=sh: rgb2cterm: command not found

    hi DiffText       gui=NONE   guifg=#ffffcd ctermfg=sh: rgb2cterm: command not found   guibg=#4a2a4a ctermbg=sh: rgb2cterm: command not found
    hi DiffChange     gui=NONE   guifg=#ffffcd ctermfg=sh: rgb2cterm: command not found   guibg=#306b8f ctermbg=sh: rgb2cterm: command not found
    hi DiffDelete     gui=NONE   guifg=#ffffcd ctermfg=sh: rgb2cterm: command not found   guibg=#6d3030 ctermbg=sh: rgb2cterm: command not found
    hi DiffAdd        gui=NONE   guifg=#ffffcd ctermfg=sh: rgb2cterm: command not found   guibg=#306d30 ctermbg=sh: rgb2cterm: command not found

    hi Cursor         gui=NONE   guifg=#404040 ctermfg=sh: rgb2cterm: command not found   guibg=#8b8bff ctermbg=sh: rgb2cterm: command not found
    hi lCursor        gui=NONE   guifg=#404040 ctermfg=sh: rgb2cterm: command not found   guibg=#8fff8b ctermbg=sh: rgb2cterm: command not found
    hi CursorIM       gui=NONE   guifg=#404040 ctermfg=sh: rgb2cterm: command not found   guibg=#8b8bff ctermbg=sh: rgb2cterm: command not found

    hi Folded         gui=NONE   guifg=#cfcfcd ctermfg=sh: rgb2cterm: command not found   guibg=#4b208f ctermbg=sh: rgb2cterm: command not found
    hi FoldColumn     gui=NONE   guifg=#8b8bcd ctermfg=sh: rgb2cterm: command not found   guibg=#2e2e2e ctermbg=sh: rgb2cterm: command not found

    hi Directory      gui=NONE   guifg=#00ff8b ctermfg=sh: rgb2cterm: command not found   guibg=NONE
    hi LineNr         gui=NONE   guifg=#8b8bcd ctermfg=sh: rgb2cterm: command not found   guibg=#2e2e2e ctermbg=sh: rgb2cterm: command not found
    hi NonText        gui=BOLD   guifg=#8b8bcd ctermfg=sh: rgb2cterm: command not found   guibg=NONE
    hi SpecialKey     gui=BOLD   guifg=#ab60ed ctermfg=sh: rgb2cterm: command not found   guibg=NONE
    hi Title          gui=BOLD   guifg=#af4f4b ctermfg=sh: rgb2cterm: command not found   guibg=NONE
    hi Visual         gui=NONE   guifg=#eeeeee ctermfg=sh: rgb2cterm: command not found   guibg=#4e4e8f ctermbg=sh: rgb2cterm: command not found

    hi Comment        gui=NONE   guifg=#cd8b00 ctermfg=sh: rgb2cterm: command not found   guibg=NONE
    hi Constant       gui=NONE   guifg=#ffcd8b ctermfg=sh: rgb2cterm: command not found   guibg=NONE
    hi String         gui=NONE   guifg=#ffcd8b ctermfg=sh: rgb2cterm: command not found   guibg=#404040 ctermbg=sh: rgb2cterm: command not found
    hi Error          gui=NONE   guifg=#ffffff ctermfg=sh: rgb2cterm: command not found   guibg=#6e2e2e ctermbg=sh: rgb2cterm: command not found
    hi Identifier     gui=NONE   guifg=#ff8bff ctermfg=sh: rgb2cterm: command not found   guibg=NONE
    hi Ignore         gui=NONE
    hi Number         gui=NONE   guifg=#f0ad6d ctermfg=sh: rgb2cterm: command not found   guibg=NONE
    hi PreProc        gui=NONE   guifg=#409090 ctermfg=sh: rgb2cterm: command not found   guibg=NONE
    hi Special        gui=NONE   guifg=#c080d0 ctermfg=sh: rgb2cterm: command not found   guibg=NONE
    hi SpecialChar    gui=NONE   guifg=#c080d0 ctermfg=sh: rgb2cterm: command not found   guibg=#404040 ctermbg=sh: rgb2cterm: command not found
    hi Statement      gui=NONE   guifg=#808bed ctermfg=sh: rgb2cterm: command not found   guibg=NONE
    hi Todo           gui=BOLD   guifg=#303030 ctermfg=sh: rgb2cterm: command not found   guibg=#d0a060 ctermbg=sh: rgb2cterm: command not found
    hi Type           gui=NONE   guifg=#ff8bff ctermfg=sh: rgb2cterm: command not found   guibg=NONE
    hi Underlined     gui=BOLD   guifg=#df9f2d ctermfg=sh: rgb2cterm: command not found   guibg=NONE
    hi TaglistTagName gui=BOLD   guifg=#808bed ctermfg=sh: rgb2cterm: command not found   guibg=NONE

    hi perlSpecialMatch   gui=NONE guifg=#c080d0 ctermfg=sh: rgb2cterm: command not found   guibg=#404040 ctermbg=sh: rgb2cterm: command not found
    hi perlSpecialString  gui=NONE guifg=#c080d0 ctermfg=sh: rgb2cterm: command not found   guibg=#404040 ctermbg=sh: rgb2cterm: command not found

    hi cSpecialCharacter  gui=NONE guifg=#c080d0 ctermfg=sh: rgb2cterm: command not found   guibg=#404040 ctermbg=sh: rgb2cterm: command not found
    hi cFormat            gui=NONE guifg=#c080d0 ctermfg=sh: rgb2cterm: command not found   guibg=#404040 ctermbg=sh: rgb2cterm: command not found

    hi doxygenBrief                 gui=NONE guifg=#fdab60 ctermfg=sh: rgb2cterm: command not found   guibg=NONE
    hi doxygenParam                 gui=NONE guifg=#fdd090 ctermfg=sh: rgb2cterm: command not found   guibg=NONE
    hi doxygenPrev                  gui=NONE guifg=#fdd090 ctermfg=sh: rgb2cterm: command not found   guibg=NONE
    hi doxygenSmallSpecial          gui=NONE guifg=#fdd090 ctermfg=sh: rgb2cterm: command not found   guibg=NONE
    hi doxygenSpecial               gui=NONE guifg=#fdd090 ctermfg=sh: rgb2cterm: command not found   guibg=NONE
    hi doxygenComment               gui=NONE guifg=#ad7b20 ctermfg=sh: rgb2cterm: command not found   guibg=NONE
    hi doxygenSpecial               gui=NONE guifg=#fdab60 ctermfg=sh: rgb2cterm: command not found   guibg=NONE
    hi doxygenSpecialMultilineDesc  gui=NONE guifg=#ad600b ctermfg=sh: rgb2cterm: command not found   guibg=NONE
    hi doxygenSpecialOnelineDesc    gui=NONE guifg=#ad600b ctermfg=sh: rgb2cterm: command not found   guibg=NONE

    if v:version >= 700
        hi Pmenu          gui=NONE   guifg=#eeeeee ctermfg=sh: rgb2cterm: command not found   guibg=#4e4e8f ctermbg=sh: rgb2cterm: command not found
        hi PmenuSel       gui=BOLD   guifg=#eeeeee ctermfg=sh: rgb2cterm: command not found   guibg=#2e2e3f ctermbg=sh: rgb2cterm: command not found
        hi PmenuSbar      gui=BOLD   guifg=#eeeeee ctermfg=sh: rgb2cterm: command not found   guibg=#6e6eaf ctermbg=sh: rgb2cterm: command not found
        hi PmenuThumb     gui=BOLD   guifg=#eeeeee ctermfg=sh: rgb2cterm: command not found   guibg=#6e6eaf ctermbg=sh: rgb2cterm: command not found

        hi SpellBad     gui=undercurl guisp=#cc6666
        hi SpellRare    gui=undercurl guisp=#cc66cc
        hi SpellLocal   gui=undercurl guisp=#cccc66
        hi SpellCap     gui=undercurl guisp=#66cccc

        hi MatchParen   gui=NONE      guifg=#cfbfad ctermfg=sh: rgb2cterm: command not found   guibg=#4e4e8f ctermbg=sh: rgb2cterm: command not found
    endif
else
    if ! g:inkpot_black_background
        exec "hi Normal         cterm=NONE   ctermfg=" . <SID>X(79) . " ctermbg=" . <SID>X(80)
    else
        exec "hi Normal         cterm=NONE   ctermfg=" . <SID>X(79) . " ctermbg=" . <SID>X(16)
    endif

    exec "hi IncSearch      cterm=BOLD   ctermfg=" . <SID>X(80) . " ctermbg=" . <SID>X(73)
    exec "hi Search         cterm=NONE   ctermfg=" . <SID>X(80) . " ctermbg=" . <SID>X(52)
    exec "hi ErrorMsg       cterm=BOLD   ctermfg=" . <SID>X(16) . " ctermbg=" . <SID>X(48)
    exec "hi WarningMsg     cterm=BOLD   ctermfg=" . <SID>X(16) . " ctermbg=" . <SID>X(68)
    exec "hi ModeMsg        cterm=BOLD   ctermfg=" . <SID>X(38) . " ctermbg=" . "NONE"
    exec "hi MoreMsg        cterm=BOLD   ctermfg=" . <SID>X(38) . " ctermbg=" . "NONE"
    exec "hi Question       cterm=BOLD   ctermfg=" . <SID>X(52) . " ctermbg=" . "NONE"

    exec "hi StatusLine     cterm=BOLD   ctermfg=" . <SID>X(85) . " ctermbg=" . <SID>X(81)
    exec "hi User1          cterm=BOLD   ctermfg=" . <SID>X(28) . " ctermbg=" . <SID>X(81)
    exec "hi User2          cterm=BOLD   ctermfg=" . <SID>X(39) . " ctermbg=" . <SID>X(81)
    exec "hi StatusLineNC   cterm=NONE   ctermfg=" . <SID>X(84) . " ctermbg=" . <SID>X(81)
    exec "hi VertSplit      cterm=NONE   ctermfg=" . <SID>X(84) . " ctermbg=" . <SID>X(81)

    exec "hi WildMenu       cterm=BOLD   ctermfg=" . <SID>X(87) . " ctermbg=" . <SID>X(38)

    exec "hi MBENormal                   ctermfg=" . <SID>X(85) . " ctermbg=" . <SID>X(81)
    exec "hi MBEChanged                  ctermfg=" . <SID>X(87) . " ctermbg=" . <SID>X(81)
    exec "hi MBEVisibleNormal            ctermfg=" . <SID>X(85) . " ctermbg=" . <SID>X(82)
    exec "hi MBEVisibleChanged           ctermfg=" . <SID>X(87) . " ctermbg=" . <SID>X(82)

    exec "hi DiffText       cterm=NONE   ctermfg=" . <SID>X(79) . " ctermbg=" . <SID>X(34)
    exec "hi DiffChange     cterm=NONE   ctermfg=" . <SID>X(79) . " ctermbg=" . <SID>X(17)
    exec "hi DiffDelete     cterm=NONE   ctermfg=" . <SID>X(79) . " ctermbg=" . <SID>X(32)
    exec "hi DiffAdd        cterm=NONE   ctermfg=" . <SID>X(79) . " ctermbg=" . <SID>X(20)

    exec "hi Folded         cterm=NONE   ctermfg=" . <SID>X(79) . " ctermbg=" . <SID>X(35)
    exec "hi FoldColumn     cterm=NONE   ctermfg=" . <SID>X(39) . " ctermbg=" . <SID>X(80)

    exec "hi Directory      cterm=NONE   ctermfg=" . <SID>X(28) . " ctermbg=" . "NONE"
    exec "hi LineNr         cterm=NONE   ctermfg=" . <SID>X(39) . " ctermbg=" . <SID>X(80)
    exec "hi NonText        cterm=BOLD   ctermfg=" . <SID>X(39) . " ctermbg=" . "NONE"
    exec "hi SpecialKey     cterm=BOLD   ctermfg=" . <SID>X(55) . " ctermbg=" . "NONE"
    exec "hi Title          cterm=BOLD   ctermfg=" . <SID>X(48) . " ctermbg=" . "NONE"
    exec "hi Visual         cterm=NONE   ctermfg=" . <SID>X(79) . " ctermbg=" . <SID>X(38)

    exec "hi Comment        cterm=NONE   ctermfg=" . <SID>X(52) . " ctermbg=" . "NONE"
    exec "hi Constant       cterm=NONE   ctermfg=" . <SID>X(73) . " ctermbg=" . "NONE"
    exec "hi String         cterm=NONE   ctermfg=" . <SID>X(73) . " ctermbg=" . <SID>X(81)
    exec "hi Error          cterm=NONE   ctermfg=" . <SID>X(79) . " ctermbg=" . <SID>X(32)
    exec "hi Identifier     cterm=NONE   ctermfg=" . <SID>X(53) . " ctermbg=" . "NONE"
    exec "hi Ignore         cterm=NONE"
    exec "hi Number         cterm=NONE   ctermfg=" . <SID>X(69) . " ctermbg=" . "NONE"
    exec "hi PreProc        cterm=NONE   ctermfg=" . <SID>X(25) . " ctermbg=" . "NONE"
    exec "hi Special        cterm=NONE   ctermfg=" . <SID>X(55) . " ctermbg=" . "NONE"
    exec "hi SpecialChar    cterm=NONE   ctermfg=" . <SID>X(55) . " ctermbg=" . <SID>X(81)
    exec "hi Statement      cterm=NONE   ctermfg=" . <SID>X(27) . " ctermbg=" . "NONE"
    exec "hi Todo           cterm=BOLD   ctermfg=" . <SID>X(16) . " ctermbg=" . <SID>X(57)
    exec "hi Type           cterm=NONE   ctermfg=" . <SID>X(71) . " ctermbg=" . "NONE"
    exec "hi Underlined     cterm=BOLD   ctermfg=" . <SID>X(77) . " ctermbg=" . "NONE"
    exec "hi TaglistTagName cterm=BOLD   ctermfg=" . <SID>X(39) . " ctermbg=" . "NONE"

    if v:version >= 700
        exec "hi Pmenu          cterm=NONE   ctermfg=" . <SID>X(87) . " ctermbg=" . <SID>X(82)
        exec "hi PmenuSel       cterm=BOLD   ctermfg=" . <SID>X(87) . " ctermbg=" . <SID>X(38)
        exec "hi PmenuSbar      cterm=BOLD   ctermfg=" . <SID>X(87) . " ctermbg=" . <SID>X(39)
        exec "hi PmenuThumb     cterm=BOLD   ctermfg=" . <SID>X(87) . " ctermbg=" . <SID>X(39)

        exec "hi SpellBad       cterm=NONE ctermbg=" . <SID>X(32)
        exec "hi SpellRare      cterm=NONE ctermbg=" . <SID>X(33)
        exec "hi SpellLocal     cterm=NONE ctermbg=" . <SID>X(36)
        exec "hi SpellCap       cterm=NONE ctermbg=" . <SID>X(21)
        exec "hi MatchParen     cterm=NONE ctermbg=" . <SID>X(14) . "ctermfg=" . <SID>X(25)
    endif
endif

" vim: set et :
