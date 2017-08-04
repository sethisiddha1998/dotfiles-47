" =============================================================================
" File Name:     filetypes.vim
" Creation Date: 21-03-2016
" Last Modified: 2017-08-04 16:00:25
" =============================================================================


" Vimscript file settings ------------------------------------------------- {{{
augroup filetype_vim
    autocmd!
    au FileType vim setlocal shiftwidth=4 tabstop=4 expandtab
    au FileType vim setlocal foldmethod=marker
augroup END
" ------------------------------------------------------------------------- }}}

" R settings -------------------------------------------------------------- {{{
augroup filetype_r
    autocmd!
    au FileType r,rmd setlocal shiftwidth=2 tabstop=2 expandtab
    au FileType r,rmd setlocal foldmethod=marker
augroup END
" ------------------------------------------------------------------------- }}}

" Latex settings ---------------------------------------------------------- {{{
augroup filetype_tex
    autocmd!
    au BufRead *.tex set tw=150
    au FileType tex  set tw=150
    au FileType tex  setlocal colorcolumn=150
    au FileType tex  setlocal shiftwidth=2 tabstop=2 expandtab
augroup END
" ------------------------------------------------------------------------- }}}

" C/Cpp settings ---------------------------------------------------------- {{{
augroup filetype_c
    autocmd!
    au FileType c    setlocal shiftwidth=4 tabstop=4 expandtab
    au FileType cpp  setlocal shiftwidth=4 tabstop=4 expandtab
    au BufRead *.h   setlocal shiftwidth=4 tabstop=4 expandtab
    au BufRead *.hpp setlocal shiftwidth=4 tabstop=4 expandtab
augroup END
" ------------------------------------------------------------------------- }}}

" JavaScript settings ----------------------------------------------------- {{{
augroup filetype_js
    autocmd!
    au FileType javascript setlocal shiftwidth=4 tabstop=4 expandtab
    au FileType javascript setlocal foldmethod=marker
    " au FileType javascript setlocal omnifunc=javascriptcomplete#Complete
    au FileType javascript setlocal omnifunc=tern#Complete
augroup END
" ------------------------------------------------------------------------- }}}

" Python settings --------------------------------------------------------- {{{
augroup filetype_python
    autocmd!
    au FileType python setlocal shiftwidth=4 tabstop=4 expandtab
    au FileType python setlocal omnifunc=pythoncomplete#Complete
augroup END
" ------------------------------------------------------------------------- }}}

" Julia settings ---------------------------------------------------------- {{{
augroup filetype_julia
    autocmd!
    au FileType julia setlocal shiftwidth=4 expandtab
augroup END
" ------------------------------------------------------------------------- }}}

" yml settings ------------------------------------------------------------ {{{
augroup filetype_yml
    autocmd!
    au FileType yaml setlocal shiftwidth=2 tabstop=2 expandtab
augroup END
" ------------------------------------------------------------------------- }}}

" Java settings ----------------------------------------------------------- {{{
augroup filetype_java
    autocmd!
    autocmd FileType java setlocal shiftwidth=4 tabstop=4 expandtab
    autocmd FileType java setlocal omnifunc=javacomplete#Complete
augroup END
" ------------------------------------------------------------------------- }}}

" HTML/CSS settings ------------------------------------------------------- {{{
augroup filetype_html
    autocmd!
    au FileType html setlocal shiftwidth=2 tabstop=2 expandtab
    au FileType html setlocal nowrap
    au FileType css  setlocal shiftwidth=4 tabstop=4 expandtab
    au FileType css  setlocal nowrap
    au FileType css setlocal foldmethod=marker
augroup END
" ------------------------------------------------------------------------- }}}

" JSON settings ----------------------------------------------------------- {{{
augroup filetype_json
    autocmd!
    au FileType json setlocal shiftwidth=4 tabstop=4 expandtab
augroup END
" ------------------------------------------------------------------------- }}}

" Markdown settings ------------------------------------------------------- {{{
augroup filetype_md
    autocmd!
    au FileType markdown setlocal wrap
    au FileType markdown setlocal omnifunc=
augroup END
" ------------------------------------------------------------------------- }}}

" Bash settings ----------------------------------------------------------- {{{
augroup filetype_bash
    autocmd!
    au FileType sh setlocal shiftwidth=4 tabstop=4 expandtab
    au FileType sh setlocal foldmethod=marker
augroup END
" ------------------------------------------------------------------------- }}}
