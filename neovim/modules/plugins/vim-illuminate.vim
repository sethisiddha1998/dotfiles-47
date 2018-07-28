" Time in millis (default 250)
let g:Illuminate_delay = 250

let g:Illuminate_ftHighlightGroups = {
      \ 'vim': ['vimVar', 'vimString', 'vimLineComment',
      \         'vimFuncName', 'vimFunction', 'vimUserFunc', 'vimFunc']
      \ }

let g:Illuminate_ftblacklist = ['nerdtree']

" Highlight the line under the cursor. Matching words will be highlighted with
" the same color.
set cursorline
highlight CursorLine ctermbg=237