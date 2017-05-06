<<<<<<< HEAD
=======
setl shiftwidth=4
setl tabstop=4
setl softtabstop=4
>>>>>>> 9c0f5adeebefc967d8ecfafcdb57fd23a0ea0ad5

" Syntastic configuration for python
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_python_python_exec = '/usr/bin/python3'
let g:syntastic_python_checkers = ['flake8', 'python']
let g:syntastic_python_flake8_args='--ignore=E501,E225,E128,E126'

<<<<<<< HEAD
=======
autocmd FileType python autocmd BufWritePost <buffer> call Flake8()
let g:flake8_show_in_gutter=1
let g:flake8_show_in_file=1

" Set ColorColumn to 80 char
set colorcolumn=80
hi ColorColumn cterm=NONE ctermbg=darkgrey ctermfg=None guibg=darkgrey


>>>>>>> 9c0f5adeebefc967d8ecfafcdb57fd23a0ea0ad5

