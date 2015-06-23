execute pathogen#infect('bundle/{}')

let mapleader = "-"
let maplocalleader = "\\"

set dir=$HOME/.vim/swapfiles
set number
set laststatus=2
set printoptions=number:y
set splitbelow
set splitright
set incsearch
set hlsearch
set shiftround
set wrap
set expandtab
set shiftwidth=2
set softtabstop=2
set background=dark
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)
set statusline+=\ %y\ %P

syntax enable
filetype plugin indent on

iabbrev pjpp puts JSON.pretty_generate(JSON.parse(response.body))

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap H ^
nnoremap L $
nnoremap <leader>- ddp
nnoremap <leader>_ ddkkp
nnoremap <leader><c-u> viwU<esc>
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>cs :vsplit $HOME/.vim/cheatsheet.txt<cr>
nnoremap <leader>o O<esc>x
nnoremap <leader><esc> :nohlsearch<cr><esc>
nnoremap <leader>fw :%s/\s\+$//<cr>
nnoremap ;; :%s:::cg<left><left><left><left>
nnoremap <leader>b, f,a<cr><esc>==
nnoremap <leader>bb} f}ha<cr><esc>==
nnoremap <leader>b[ f[a<cr><esc>==
nnoremap <leader>b{ f{a<cr><esc>==
nnoremap <leader>bb a<cr><esc>kg_
nnoremap <leader>t= :Tabularize /=<cr>
nnoremap <leader>t: :Tabularize /:/r0c1l0<cr>
nnoremap <leader>t{ :Tabularize /{<cr>
nnoremap <leader>a ggVG
nnoremap <leader>rs :!touch tmp/restart.txt

vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>
vnoremap <leader>' <esc>`<i"<esc>`>la"<esc>

inoremap <leader><c-u> <esc>viwU
inoremap jk <esc>
inoremap <esc> <nop>

onoremap il( :<c-u>normal! F)vi(<cr>
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap in{ :<c-u>normal! f{vi{<cr>
onoremap in' :<c-u>normal! f'vi'<cr>
onoremap in" :<c-u>normal! f"vi"<cr>

iabbrev pjpp puts JSON.pretty_generate(JSON.parse(response.body))

au BufNewFile,BufRead *.rabl set filetype=ruby

augroup filetype_ruby
  autocmd!
  autocmd FileType ruby nnoremap <buffer> <localleader>c I#<space><esc>
  autocmd FileType ruby inoremap <buffer> <localleader>c <home>#<space><end>
  autocmd FileType ruby nnoremap <buffer> <localleader>rt :!bundle exec rake test<cr>
  autocmd FileType ruby nnoremap <buffer> <localleader>ro :!bundle exec rake test TEST=%<cr>
  autocmd FileType ruby nnoremap <buffer> <localleader>rr :call VimuxRunCommand("clear; ruby " . bufname("%"))<cr>
augroup END

augroup filetype_html
  autocmd!
  autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END

augroup filetype_markdown
  autocmd!
  autocmd FileType markdown onoremap ih :<c-u>execute "normal! ?^[-=]\\{-2,}$\r:nohlsearch\rkvg_"<cr>
  autocmd FileType markdown onoremap ah :<c-u>execute "normal! ?^[-=]\\{-2,}$\r:nohlsearch\rg_vk0"<cr>
  autocmd FileType markdown nnoremap <buffer> <localleader>v :!open -a Google\ Chrome %<cr>
augroup END

augroup filetype_text
  autocmd!
  autocmd FileType text nnoremap <buffer> <localleader>d 0iDONE <esc>
  autocmd FileType text nnoremap <buffer> <localleader>c 0/DONE<cr>viwxx
augroup END

highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
match ExtraWhitespace /\s\+$/

