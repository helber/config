set shell=/bin/bash

set expandtab shiftwidth=4 tabstop=8 colorcolumn=99 softtabstop=4 smartindent

" set foldmethod=marker

" vim-python
augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=99
      \ formatoptions+=croq softtabstop=4 smartindent autoindent
      \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END

autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype htmldjango setlocal ts=2 sw=2 expandtab
autocmd Filetype jinja setlocal ts=2 sw=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab

" Vim commentary
autocmd FileType htmldjango set commentstring={#\ %s\ #}
autocmd FileType jinja set commentstring={#\ %s\ #}

" Highlight current line
set cursorline

if has("autocmd")
    filetype on
    " yaml
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 et
    " autocmd FileType make setlocal ts=8 sts=8 sw=8 et
    autocmd FileType javascript setlocal ts=4 sts=4 sw=4 et
    autocmd FileType html setlocal ts=4 sts=4 sw=4 et
endif

let g:NERDTreeWinSize=20
" let g:NERDTreeMapOpenInTabSilent='<RightMouse>'
let g:syntastic_python_flake8_post_args='--max-line-length=100 --ignore=W391,F403'

" let g:rehash256=1
" colorscheme jellybeans
colorscheme molokai
" colorscheme rdark-terminal
" set mouse=n
set mouse=a
set ttyfast
set clipboard+=unnamedplus

nnoremap <leader>li :set list!<CR>
set listchars=space:.,tab:▸\ ,eol:¬
" Invisible character colors
"highlight NonText guifg=#4a4a59
"highlight SpecialKey guifg=#4a4a59

" session management
nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

" delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" My custom ctrlp
let g:ctRLP_Custom_ignore = '\v[\/](node_modules|target|dist|vendor)|(\.(swp|tox|ico|git|hg|svn))$'
" if executable('ag')
"     let g:ctrlp_user_command = 'ag %s -l --nocolor --ignore '+ g:ctrlp_custom_ignore +' -g ""'
" endif

" replace currently selected text with default register
" without yanking it
vnoremap <leader>p "_dP
vnoremap p "_dP

" let mapleader="\<Space>"
nnoremap <C-n> :lne<CR>
nnoremap <C-m> :lp<CR>
nnoremap <Leader>a :cclose<CR>

" GitGutter
noremap <Leader>gn :GitGutterNextHunk<CR>
noremap <Leader>gp :GitGutterPrevHunk<CR>

noremap <leader>c :bd<CR>
nnoremap <F5> :buffers<CR>:buffer<Space>




" Golang {{{
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1

au FileType go nmap <leader>gr <Plug>(go-run)
au FileType go nmap <leader>gm <Plug>(go-build)
au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>gc <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>gs <Plug>(go-implements)
au FileType go nmap <Leader>gi <Plug>(go-info)
" au FileType go nmap <Leader>gr <Plug>(go-rename)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_term_enabled=1

let g:go_test_timeout = '10s'

let g:go_fmt_command = "goimports"

au FileType go setlocal expandtab shiftwidth=4 tabstop=4 colorcolumn=99 softtabstop=4 smartindent autoindent

" deocomplete-go
" Path to python interpreter for neovim
let g:python3_host_prog  = '/usr/bin/python3'
" Skip the check of neovim module
let g:python3_host_skip_check = 1

" " Run deoplete.nvim automatically
" let g:deoplete#enable_at_startup = 1
" " deoplete-go settings
" let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
" let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
" let g:deoplete#sources#go#use_cache = 1

" deoplete tab-complete
" inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" tern
" autocmd FileType go nnoremap <silent> <buffer> gb :TernDef<CR>

" }}}

" clang_complete
" let g:syntastic_python_python_exec = 'python3'
" let g:clang_complete_auto=1
" let g:clang_library_path='/usr/lib64/llvm/'
" let g:clang_complete_macros = 1
" let g:acp_behaviorKeywordLength = 5

" My Plug
if filereadable(expand("~/.config/nvim/local_init_plug.vim"))
  source ~/.config/nvim/local_init_plug.vim
endif

" include vimrc project file
if filereadable(".vimrc.proj")
    source .vimrc.proj
endif

