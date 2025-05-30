" Current Plugins
" CtrlP 2025_03_02

" Aesthetic
highlight Normal ctermfg=black ctermbg=white
syntax off

" Case insensitive search
set ic

" File hop
set path=.,,**

" Tabs and wraps and underlines
set cursorline
set expandtab
set nowrap
set shortmess-=S
set smartindent
set tabstop=2 softtabstop=2 shiftwidth=2

" Use ripgrep to grep
if executable('rg')
  set grepprg=rg\ --hidden\ -H\ --no-heading\ --vimgrep
  set grepformat^=%f:%l:%c:%m
	let g:ctrlp_user_command = 'rg %s -tts -tjson --files --color=never --glob ""'
	let g:ctrlp_use_caching = 0
endif

" Shortcuts start with space
let mapleader = "\<Space>"

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
