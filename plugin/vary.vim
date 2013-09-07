" vary.vim - A script to converting tabs to spaces and auto save
" with remove End of line in end of line
" Maintainer: Dong Weiming <ciici123@gmail.com>

" make tab do tabs at beginning and spaces elsewhere
function RetabIndents()
    let auto_striptab = exists('g:auto_striptab') ? g:auto_striptab : "python"
    if empty(matchstr(auto_striptab, &ft))
        return
    endif
    let l:saved_view = winsaveview()
    silent! %s/\t/\=repeat(" ", &tabstop)/
    call winrestview(l:saved_view)
endfunction

" http://vim.wikia.com/wiki/Remove_unwanted_spaces
function StripTrailingWhite()
    let auto_striptrail = exists('g:auto_striptrail') ? g:auto_striptrail : "python"
    if empty(matchstr(auto_striptrail, &ft))
        return
    endif
    let l:winview = winsaveview()
    silent! %s/\s\+$//
    call winrestview(l:winview)
endfunction

autocmd BufWritePre,FileAppendPre,FileWritePre,FilterWritePre * :call StripTrailingWhite()
autocmd BufWritePre,FileAppendPre,FileWritePre,FilterWritePre * :call RetabIndents()
