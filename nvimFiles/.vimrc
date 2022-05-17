" Plugins Section
call plug#begin()
 Plug 'ryanoasis/vim-devicons'
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'glepnir/dashboard-nvim'
 Plug 'terryma/vim-multiple-cursors'
 Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
 Plug 'romgrk/doom-one.vim'
 Plug 'kyazdani42/nvim-web-devicons' " for file icons
 Plug 'kyazdani42/nvim-tree.lua'
call plug#end()

let mapleader = " "
set number relativenumber
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

"General rempaps
nnoremap <leader>q :bd <CR>
nnoremap <leader>d :bn <CR>
nnoremap <leader>i :bp <CR>
"Tree
nnoremap <C-t> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
nnoremap <SPACE> <Nop>
"Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" other
call v:lua.require('init')
hi! link EndOfBuffer Ignore
set fillchars+=eob:* 
set nowrap
"themes
set termguicolors
colorscheme nightfly
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_powerline_fonts = 1
let g:airline_theme='wombat'
let g:clear_background=0
hi! Normal ctermbg=NONE guibg=NONE
hi Normal ctermfg=None ctermbg=None
hi! NonText ctermbg=NONE guibg=NONE
hi LineNr ctermfg=None ctermbg=None 
hi! LineNr ctermbg=None guibg=None 



let g:dashboard_custom_header = [
  \'  ▪  .▄▄ ·      ▐▄▄▄▄• ▄▌ ▄▄▄·  ▐ ▄     ▄▄▄▄· ▄▄▄ .▄▄▄▄▄ ▄▄▄·', 
  \'  ██ ▐█ ▀.       ·███▪██▌▐█ ▀█ •█▌▐█    ▐█ ▀█▪▀▄.▀·•██  ▐█ ▀█', 
  \'  ▐█·▄▀▀▀█▄    ▪▄ ███▌▐█▌▄█▀▀█ ▐█▐▐▌    ▐█▀▀█▄▐▀▀▪▄ ▐█.▪▄█▀▀█', 
  \'  ▐█▌▐█▄▪▐█    ▐▌▐█▌▐█▄█▌▐█ ▪▐▌██▐█▌    ██▄▪▐█▐█▄▄▌ ▐█▌·▐█ ▪▐▌',
  \'  ▀▀▀ ▀▀▀▀      ▀▀▀• ▀▀▀  ▀  ▀ ▀▀ █▪    ·▀▀▀▀  ▀▀▀  ▀▀▀  ▀  ▀', 
  \]
