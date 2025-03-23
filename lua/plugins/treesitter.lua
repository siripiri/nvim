return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",  -- Automatically update parsers
    lazy = false,
    event = { "BufReadPre", "BufNewFile" }, -- Load when opening a file
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "java", "python", "javascript", "html", "css", "json", "bash", "c", "cpp" }, -- Add more as needed
        sync_install = false,  -- Install parsers asynchronously
        highlight = {
          enable = true,        -- Enable syntax highlighting
          additional_vim_regex_highlighting = false,
        },
        indent = { enable = true },  -- Enable TreeSitter-based indentation
      })
    end,
  },
}

