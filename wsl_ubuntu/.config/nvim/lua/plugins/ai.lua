return {
  { "github/copilot.vim" },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim" },
    },
    build = "make install", -- As per repo instructions for some setups, but lazy often handles it.
  },
}
