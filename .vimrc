" Current Plugins
" CtrlP 2025_03_02

syntax off

set cursorline
set expandtab
set nowrap
set path=.,,**
set shortmess-=S
set smartindent
set tabstop=2 softtabstop=2 shiftwidth=2
let mapleader = "\<Space>"

" Use ripgrep to grep
if executable('rg')
  set grepprg=rg\ --hidden\ -H\ --no-heading\ --vimgrep
  set grepformat^=%f:%l:%c:%m
	let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
	let g:ctrlp_use_caching = 0
endif

" Shortcut to buffer hop
nnoremap <leader>b :ls<CR>:b<space>

" Shortcut to buffer bop
nnoremap <BS> <C-^>

" Shorcut to buffer wipe
nnoremap <leader>w :up \| %bd \| e#<CR>

" Shortcut to grep word under cursor
nnoremap <leader>g :grep! <cword><CR>:cwindow<CR>

" Abbreviation to treat grep as silent grep
cnoreabbrev <expr> grep  (getcmdtype() ==# ':' && getcmdline() =~# '^grep')  ? 'silent grep'  : 'grep'

" Auto-open quick fix window when grepping
augroup quickfix
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost l* lwindow
augroup END

" Layout quickfix window underneath vertical splits
au FileType qf wincmd J

" TODO: Per-project vimrc files
" set exrc

" TODO: Figure out why default indentation in html is so bad
" au FileType html,htmldjango setlocal indentexpr=

" Light mode
highlight Normal ctermfg=black ctermbg=white
