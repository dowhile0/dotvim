set autoindent
set cindent

set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2

"C Project settings
augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

let &path.="src/include,/usr/include/AL,"

set makeprg=make\ -C\ ../build\ -j9

nnoremap <F4> :make!<cr>

" Disable Syntastic (it uses YCM)
let g:syntastic_disabled_filetypes=['c','cpp']

" Set Clang-format
let g:clang_format#code_style = "google"
let g:clang_format#auto_format = 1
let g:clang_format#auto_format_on_insert_leave = 1
let g:clang_format#auto_formatexpr = 1

let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -1,
            \ "AllowShortIfStatementsOnASingleLine" : "false",
            \ "AllowShortBlocksOnASingleLine": "false",
            \ "AllowShortFunctionsOnASingleLine": "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "IndentWidth": "2",
            \ "BreakBeforeBraces": "Linux",
            \ "Standard" : "C++11",
            \ "NamespaceIndentation" : "NI_Inner"}

" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>

<<<<<<< HEAD
=======
" Easytags
let g:easytags_autorecurse = 1

" C++ fold #includes and namespaces
function! Fold_Includes(ln)
  let cur_line = getline(a:ln)
  let prev_line = getline(a:ln - 1)

  " skip empty lines
  let empty_regex = '^\s*$'
  if cur_line =~ empty_regex
    return -1
  endif

  if cur_line[:8] == '#include '
    return (prev_line[:8] == '#include ' ||
          \ prev_line =~ empty_regex) ? 1 : '>1'
  endif

  if cur_line[:9] == 'namespace '
    return prev_line[:9] == 'namespace ' ? 1 : '>1'
  endif

  let end_ns_regex = '^}}*\s*//\s*namespace'
  if cur_line =~ end_ns_regex
    return prev_line =~ end_ns_regex ? 1 : '>1'
  endif

  return 0
endfunction

au FileType c,cpp setlocal foldexpr=Fold_Includes(v:lnum) foldmethod=expr


>>>>>>> 9c0f5adeebefc967d8ecfafcdb57fd23a0ea0ad5
" Set ColorColumn to 80 char
set colorcolumn=80
hi ColorColumn cterm=NONE ctermbg=darkgrey ctermfg=None guibg=darkgrey
" Set tag colors
hi cTypeTag term=underline gui=underline
hi cEnumTag term=underline gui=underline
hi cPreProcTag term=underline gui=underline
hi cFunctionTag term=underline gui=underline
hi cMemberTag term=underline gui=underline
