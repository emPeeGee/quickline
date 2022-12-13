function! ReloadQuickline()
lua << EOF
    for k in pairs(package.loaded) do 
        if k:match("^quickline") then
            package.loaded[k] = nil
        end
    end
EOF
endfunction
" Reload the plugin
nnoremap <Leader>qj :call ReloadQuickline()<CR>
" Test the plugin
nnoremap <Leader>qk :lua require("quickline").quickline()<CR>
