return {
    {
       "williamboman/mason.nvim",
        config = function()
          require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
          auto_install = true,
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
          local lspconfig = require("lspconfig")
          -- lua script
          lspconfig.lua_ls.setup({
                settings = {
                    Lua = {
                      diagnostics = {
                        disable = { "undefined-global" }, -- Disable all undefined global warnings
                      },
                    },
                },
          })
          -- **C++ (clangd)**
          lspconfig.clangd.setup({
            cmd = { "clangd", "--background-index" },
          })
          -- java config
          lspconfig.jdtls.setup({})
          -- maven config
          lspconfig.lemminx.setup({})
          -- js & ts config
          lspconfig.ts_ls.setup({})
          -- angular
          lspconfig.angularls.setup(
           {
             on_new_config = function(new_config, _)
               new_config.cmd = {
                 "ngserver",
                 "--stdio",
                 "--tsProbeLocations",
                 "/usr/local/lib/node_modules",
                 "--ngProbeLocations",
                 "/usr/local/lib/node_modules"
               }
             end
           })
       end,
    },
}

