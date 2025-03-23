return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }, -- Required dependency
    cmd = "Telescope", -- Load on command
    lazy = true,
    config = function()
      require("telescope").setup({
        defaults = {
          mappings = {
            i = {
              ["<C-u>"] = false, -- Remove default scrolling
              ["<C-d>"] = false,
            },
          },
        },
      })
    end,
  },
}

