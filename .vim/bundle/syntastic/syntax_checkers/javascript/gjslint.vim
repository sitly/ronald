"============================================================================
"File:        gjslint.vim
"Description: Javascript syntax checker - using gjslint
"Maintainer:  Martin Grenfell <martin.grenfell at gmail dot com>
"License:     This program is free software. It comes without any warranty,
"             to the extent permitted by applicable law. You can redistribute
"             it and/or modify it under the terms of the Do What The Fuck You
"             Want To Public License, Version 2, as published by Sam Hocevar.
"             See http://sam.zoy.org/wtfpl/COPYING for more details.
"============================================================================
if !exists("g:syntastic_javascript_gjslint_conf")
    let g:syntastic_javascript_gjslint_conf = ""
endif

function! SyntaxCheckers_javascript_gjslint_IsAvailable()
    return executable('gjslint')
endfunction

function! SyntaxCheckers_javascript_gjslint_GetLocList()
    let makeprg = syntastic#makeprg#build({
                \ 'exe': 'gjslint',
                \ 'args': g:syntastic_javascript_gjslint_conf . " --nosummary --unix_mode --nodebug_indentation --nobeep",
                \ 'subchecker': 'gjslint' })
    let errorformat="%f:%l:(New Error -%\\?\%n) %m,%f:%l:(-%\\?%n) %m,%-G1 files checked, no errors found.,%-G%.%#"
    return SyntasticMake({ 'makeprg': makeprg, 'errorformat': errorformat })
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'javascript',
    \ 'name': 'gjslint'})

