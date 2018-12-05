" Leader mappings

" <Leader><Leader> - Open last buffer
nnoremap <Leader><Leader> <C-^>

" Close all buffers except active buffer
nnoremap <Leader>o :only<Cr>

" Open up fzf file search window
nnoremap <Leader>f :Files<Cr>

" <LocalLeader>e -- Edit file, starting in same directory as current file.
nnoremap <LocalLeader>e :edit <C-R>=expand('%:p:h') . '/'<CR>

" <LocalLeader>v - Edit init.vim
nnoremap <LocalLeader>v :edit ~/dotfiles/config/nvim/init.vim<CR>
