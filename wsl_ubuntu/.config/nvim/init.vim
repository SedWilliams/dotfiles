set number
set relativenumber
set scrolloff=8
set termguicolors
let g:coc_disable_startup_warning = 1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nowrap


" Plugins
call plug#begin()
Plug 'andweeb/presence.nvim'
Plug 'ayu-theme/ayu-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'github/copilot.vim'
Plug 'tpope/vim-sensible'
Plug 'deathlyfrantic/vim-distill'
Plug 'github/copilot.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'CopilotC-Nvim/CopilotChat.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'preservim/nerdtree'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': 'v0.2.0' }
Plug 'joshdick/onedark.vim'
Plug 'rebelot/kanagawa.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dbeniamine/cheat.sh-vim'
Plug 'scrooloose/syntastic'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
Plug 'epwalsh/obsidian.nvim'
call plug#end()

" Colorscheme, must come after plug#end()
colorscheme kanagawa-dragon

"Airline config
"let g:airline#extensions#tabline#enabled = 1
:let g:airline_powerline_fonts = 1
:let g:airline_theme = 'onedark'
autocmd VimEnter * source ~/.config/nvim/init.vim

:let g:airline_section_c = '%F%m'
:let g:airline_section_y = ''
:let g:airline_section_z = 'L:%l|c:%c'

"source keybinds
source ~/.config/nvim/keybinds/keybinds.vim
"my custom quickfix plugin
source ~/.config/nvim/keybinds/qflistPlug.lua

"ripgrep config for nvim
set grepprg=rg\ --vimgrep
set grepformat=%f:%l:%c:%m

