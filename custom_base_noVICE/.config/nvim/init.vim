if exists('g:vscode')
    " VSCode extension
else
    " ordinary neovim

set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath
    source ~/.vimrc


endif
" Plugins will be downloaded under the specified directory.
"call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
"Plug 'ncm2/ncm2'
"Plug 'roxma/nvim-yarp'
"Plug 'jalvesaq/Nvim-R'
"Plug 'gaalcaras/ncm-R'

" Vim 8 only
"if !has('nvim')
"    Plug 'roxma/vim-hug-neovim-rpc'
"endif

" Optional: for snippet support
" Further configuration might be required, read below
"Plug 'sirver/UltiSnips'
"Plug 'ncm2/ncm2-ultisnips'

" Optional: better Rnoweb support (LaTeX completion)
"Plug 'lervag/vimtex'

" List ends here. Plugins become visibl to Vim after this call.
"call plug#end()

