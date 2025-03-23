return {
  {
    "folke/tokyonight.nvim",
    lazy = false,      -- Load immediately
    priority = 1000,   -- Ensure it loads first
    config = function()
      require("tokyonight").setup({
        style = "night",       -- Use the "moon" variant
        transparent = false,  -- Adjust as needed
      })
      vim.cmd.colorscheme "tokyonight"
    end,
  },
}
