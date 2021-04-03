set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" if has('nvim')
"     " Enable deoplete on startup
"     let g:deoplete#enable_at_startup = 1
" endif
