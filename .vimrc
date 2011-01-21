set nocompatible
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set showmatch
set guioptions-=T
set vb t_vb=
set ruler
set nohls
set virtualedit=all
set number
set lbr
set tags+=/home/batlab/.vim/tags/gtk+.tags
filetype plugin on
filetype indent on
let g:tex_flavor='tex'
nnoremap j gj
nnoremap k gk

function! SuperCleverTab()
    if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
        return "\<Tab>"
    else
        if &omnifunc != ''
            return "\<C-X>\<C-O>"
        elseif &dictionary != ''
            return "\<C-K>"
        else
            return "\<C-N>"
        endif
    endif
endfunction

inoremap <Tab> <C-R>=SuperCleverTab()<cr>

map <C-F6> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
