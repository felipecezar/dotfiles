" vundle
set nocompatible   
filetype off     

" quando o vim for recutado, defini o caminho(path), incluindo  o Vundle e o iniciando
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" permite que o Vundle gerencie o proprio Vundle, requerido pelo plugin

Plugin 'gmarik/Vundle.vim'

" adicione aqui todos os seus plugins

Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'itchyny/lightline.vim'


" Temas 
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

" todos os Plugins devem ser adicionados antes desta linha

call vundle#end()          " requerido pelo plugin vundle

filetype plugin indent on  " requerido pelo plugin vundle

set splitbelow             " toda nova janela horizontal aparecera abaixo da janela atual
set splitright             " toda nova janela vertical aparecera a direto da janela atutal

" Navegação entre as janelas

" Ctrl-j move para a janela de baixo
nnoremap <C-J> <C-W><C-J>   
" Ctrl-k move para a janela de cima
nnoremap <C-K> <C-W><C-K>
" Ctrl-l move para a janela da direita
nnoremap <C-L> <C-W><C-L>
" Ctrl-h move para a janela da esquerda
nnoremap <C-H> <C-W><C-H>

" Dobra do código

set foldmethod=indent
set foldlevel=99

" ativa o dobra usando espaço
nnoremap <space> za 
let g:SimpyFold_docstring_preview=1

highlight BadWhitespace ctermbg=red guibg=red

" Indentação na Linguaguem Python - PEP-008
au BufRead,BufNewFile *.py,*.pyw set tabstop=4
au BufRead,BufNewFile *.py,*.pyw set softtabstop=4
au BufRead,BufNewFile *.py,*.pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set textwidth=79
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py,*.pyw set autoindent
au         BufNewFile *.py,*.pyw set fileformat=unix

" Indica quando se tem espaços em branco ou tabulações desnecessarios
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /\s\+$/
au BufRead,BufNewFile *.py,*.pyw let b:comment_leader = '#'

set encoding=utf-8

" Configurando temas
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
  set t_Co=256
endif
call togglebg#map("<F5>")


let NERDTreeIgnore=['\.pyc$','\~$']  " ignora arquivos no NERDTree

set nu    " ativa numeração nas linhas

let python_highlight_all=1
syntax on

" Mantem o nível de indentação da linha anterior
autocmd FileType python set autoindent

" Configurações do ligthIlinse
set laststatus=2
set noshowmode

