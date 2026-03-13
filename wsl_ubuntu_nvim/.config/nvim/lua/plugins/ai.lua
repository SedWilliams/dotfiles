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
    build = "make tiktoken",
    opts = {
      temperature = 0.2,
      auto_insert_mode = false,
      show_help = true,
      highlight_selection = true,
      hgihglight_headers = true,
      clear_chat_on_new_prompt = false,
      instruction_files = {
        '.github/copilot-instructions.md',
        'AGENTS.md',
      },
      headers = {
          user = '👤 You',
          assistant = '🤖 AI Assistant',
          tool = '🔧 Tool',
      },
      seperator = '━━',
      window = {
          border = 'rounded',
          layout = 'float',
          zindex = 1,
          blend = 10,
      },
    },
  },
}
