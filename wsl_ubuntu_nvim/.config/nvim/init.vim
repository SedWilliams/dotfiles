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


"source keybinds
source ~/.config/nvim/keybinds/keybinds.vim
"my custom quickfix plugin
source ~/.config/nvim/keybinds/qflistPlug.lua


"ripgrep config for nvim
set grepprg=rg\ --vimgrep
set grepformat=%f:%l:%c:%m


"Airline config
"let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'onedark'
autocmd VimEnter * source ~/.config/nvim/init.vim

let g:airline_section_c = '%F%m'
let g:airline_section_y = ''
let g:airline_section_z = 'L:%l|c:%c'

lua << EOF
-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup("plugins")
EOF

" Colorscheme, must come after plugin setup
colorscheme kanagawa-dragon

"my custom CopilotChat plugin, has to be loaded after lazy
source ~/.config/nvim/keybinds/block_to_ccwindow.lua
