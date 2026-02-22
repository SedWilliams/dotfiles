return {
  { "github/copilot.vim" },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
  {
    "github/copilot.vim",
    init = function()
      vim.g.copilot_no_tab_map = true
    end,
  },
      { "nvim-lua/plenary.nvim" },
    },
    build = "make install", -- As per repo instructions for some setups, but lazy often handles it.
  },
}
