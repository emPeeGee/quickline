" in plugin/quickline.vim
if exists('g:loaded_quickline') | finish | endif " prevent loading file twice

let s:save_cpo = &cpo " save user coptions
set cpo&vim " reset them to defaults

" command to run our plugin
command! Quickline lua require'quickline'.quickline()

let &cpo = s:save_cpo " and restore after
unlet s:save_cpo

let g:loaded_quickline = 1
