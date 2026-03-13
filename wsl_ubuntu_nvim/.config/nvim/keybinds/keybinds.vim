"apparently this file is auto found by vim so we can hotswap keybinds here

"set leader key
let mapleader = " "

"source vim config
nnoremap <leader><CR> :source ~/.config/nvim/init.vim<CR>

"buffer commands
nnoremap <leader>bb :vnew<Cr>
nnoremap <leader>bbv :vnew<Cr>
nnoremap <leader>bbh :new<Cr>
nnoremap <leader>bd :bd<Cr>
nnoremap <leader>bn :bnext<Cr>
nnoremap <leader>bp :bprevious<Cr>

"File explorer
nnoremap <leader>e :Vex<Cr>

"telescope commands
nnoremap ff :Telescope find_files<Cr>
nnoremap fg :Telescope live_grep<Cr>

"ripgrep
nnoremap <leader>rg :grep<Space>

"tab commands
nnoremap <leader>tt :tabnew<Cr>
nnoremap <leader>tq :tabclose<Cr>
nnoremap <leader>to :tabonly<Cr>
nnoremap <leader>tn :tabnext<Cr>
nnoremap <leader>tp :tabprevious<Cr>

"commentary
nnoremap <leader>/ :Commentary<CR>

" Copilot inline suggestions
imap <silent><script><expr> <C-Space> copilot#Accept("\<CR>")
nnoremap <leader>cc :Copilot enable<CR>
nnoremap <leader>cq :Copilot disable<CR>

"CopilotChat window
nnoremap <leader>cw :CopilotChat<CR>

"quickfix list commands
"copen and cclose are <leader>q by default in qflistPlug.lua
nnoremap <leader>qn :cnext<Cr>
nnoremap <leader>qp :cprevious<Cr>

"window commands
nnoremap <leader>w <C-w>

"cheat.sh
nnoremap <leader>ch :Cheat<Cr>

lua << EOF
-- Set copilot chat window keybinds
vim.api.nvim_set_keymap("n", "<leader>cw", ":CopilotChatToggle<CR>", { noremap = true, silent = true })
EOF

