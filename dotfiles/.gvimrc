"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HarnoRanaivo's .gvimrc file
" Maintainer: Harenome Ranaivoarivony Razanajato <harno.ranaivo@gmail.com>
" Last Change: May 28th 2012
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Disable menu
"set guioptions-=m

"" Disable toolbar
set guioptions-=T
let g:toolbar = 0
function! ToggleToolbar()
    if g:toolbar == 0
        let g:toolbar = 1
        set guioptions +=T
    else
        let g:toolbar = 0
        set guioptions -=T
    endif
endfunction
map <silent> <F12> :call ToggleToolbar()<CR>

"" Disable scrollbar
set guioptions-=r

"" Fullscreen
if has('unix') && executable('wmctrl')
    let g:fullscreen = 0
    function! ToggleFullscreen()
        if g:fullscreen == 1
            let g:fullscreen = 0
            let mod = "remove"
        else
            let g:fullscreen = 1
            let mod = "add"
        endif
        call system("wmctrl -ir " . v:windowid . " -b " . mod . ",fullscreen")
    endfunction
    map <silent> <F11> :call ToggleFullscreen()<CR>
endif
