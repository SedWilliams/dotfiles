return {
  {
    "neoclide/coc.nvim",
    branch = "release",
    config = function()
      -- Shift-Tab: trigger completion popup or cycle to next item
      vim.keymap.set('i', '<S-Tab>', function()
        if vim.fn['coc#pum#visible']() == 1 then
          return vim.fn['coc#pum#next'](1)
        else
          return vim.fn['coc#refresh']()
        end
      end, { expr = true, silent = true, noremap = true })

      -- C-j: navigate down in completion popup
      vim.keymap.set('i', '<C-j>', function()
        if vim.fn['coc#pum#visible']() == 1 then
          return vim.fn['coc#pum#next'](1)
        else
          return vim.api.nvim_replace_termcodes('<C-j>', true, true, true)
        end
      end, { expr = true, silent = true, noremap = true })

      -- C-k: navigate up in completion popup
      vim.keymap.set('i', '<C-k>', function()
        if vim.fn['coc#pum#visible']() == 1 then
          return vim.fn['coc#pum#prev'](1)
        else
          return vim.api.nvim_replace_termcodes('<C-k>', true, true, true)
        end
      end, { expr = true, silent = true, noremap = true })

      -- Enter: confirm completion if popup visible, otherwise insert
      -- newline and call coc#on_enter() for bracketEnterImprove
      vim.keymap.set('i', '<CR>', function()
        if vim.fn['coc#pum#visible']() == 1 then
          return vim.fn['coc#pum#confirm']()
        else
          return vim.api.nvim_replace_termcodes(
            '<C-g>u<CR><C-r>=coc#on_enter()<CR>', true, true, true
          )
        end
      end, { expr = true, silent = true, noremap = true })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
  { "scrooloose/syntastic" },
  { "maxmellon/vim-jsx-pretty" },
}
