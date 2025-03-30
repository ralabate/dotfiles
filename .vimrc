syntax off
set shortmess-=S
set cursorline
set nowrap
set smartindent
set tabstop=2 softtabstop=2 shiftwidth=2
set expandtab
set path=.,,**

au FileType html,htmldjango setlocal indentexpr=

" Current Plugins
" CtrlP 2025_03_02

if executable('rg')
	set grepprg=rg\ --color=never
	let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
	let g:ctrlp_use_caching = 0
endif
