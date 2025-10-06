require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "lua_ls", "denols", "laravel_ls", "nextls", "tailwindcss", "ts_ls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
