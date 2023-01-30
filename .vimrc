
"Basic syntax"
filetype indent on
set number
set tabstop=4
set softtabstop=4
set relativenumber
set hidden
syntax on
filetype plugin indent on


"coc requirement"
let g:coc_disable_startup_warning = 1

"Plugins"

call plug#begin('/root/.vim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'

call plug#end()
"

"Navigate between splits from ctrl w + h/j/k/l to h/j/k/l"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"To toggle nerdtree"
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"up and down to next line"
nnoremap j gj
nnoremap k gk

"Escaping normal mode"
imap jj <esc>

"To split window""
nnoremap ,v <C-w>v
nnoremap ,h <C-w>s


" To trigger completion with tab"
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
