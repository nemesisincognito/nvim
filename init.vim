:set number
:set relativenumber
:set autoindent
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a



call plug#begin()
 Plug 'ghifarit53/tokyonight-vim'
 Plug 'scrooloose/nerdtree' " apertura de nerdtree barra lateral de archivos 	
 Plug 'vim-airline/vim-airline' " barra inferior 
 Plug 'vim-airline/vim-airline-themes'  " Temas para airline
 Plug 'Yggdroot/indentLine'
 Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } "autocompletado
 Plug 'Shougo/neco-syntax'  " Fuente general de auto completado
 Plug 'ervandew/supertab' " permite ver sugerencias usando el tab
 


call plug#end()


" creando la modificacion para el tema

let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 1 
let g:tokyonight_transparent_background = 1 

colorscheme tokyonight


" modificacion de nerdtree

let g:NERDTreeChDirMode = 2

" Abrir/cerrar Nerdtree con F2
map <F2> :NERDTreeToggle<CR>

" barra de estado en la parte inferior 

let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo

" Cargar fuente Powerline y símbolos (ver nota)
let g:airline_powerline_fonts = 1

set noshowmode  " No mostrar el modo actual (ya lo muestra la barra de estado)


" No mostrar en ciertos tipos de buffers y archivos INDENT
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']



" Configuracion de autocompletado
" Activar deoplete al iniciar Neovim
let g:deoplete#enable_at_startup = 1

" Cerrar automaticamente la ventana de vista previa (donde se muestra documentación, si existe)
augroup deopleteCompleteDoneAu
  autocmd!
  autocmd CompleteDone * silent! pclose!
augroup END


"USANDO EL SUPERTAB
" Invertir direccion de navegacion (de arriba a abajo)
let g:SuperTabDefaultCompletionType = '<c-n>'
