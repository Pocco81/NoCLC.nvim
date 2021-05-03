


" GPL-3.0 License

" prevent the plugin from loading twice
if exists('g:loaded_NoCLC') | finish | endif

let s:save_cpo = &cpo " save user coptions
set cpo&vim " reset them to defaults

if has('nvim')
	if !has('nvim-0.5')
		echoerr 'You need Neovim Nightly to run this plugin'
		finish
	endif
else
    echohl Error
    echom "Sorry this plugin only works with NeoVim ¯\_(ツ)_/¯"
    echohl clear
    finish
endif


" main {{{
lua require('no-clc.main').main()
" }}}


let &cpo = s:save_cpo " and restore after
unlet s:save_cpo

" set to true the var that controls the plugin's loading state
let g:loaded_NoCLC = 1
