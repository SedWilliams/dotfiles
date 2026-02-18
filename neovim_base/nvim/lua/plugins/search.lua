return {
  {
    "junegunn/fzf",
    build = "./install --all",
  },
  { "junegunn/fzf.vim" },
  {
    "nvim-telescope/telescope.nvim",
    tag = "v0.2.0",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
}
