local lint = require("lint")

lint.linters_by_ft = {
  cpp = { "cpplint" },
  javascript = { "oxlint" },
  typescript = { "oxlint" },
  html = { "oxlint" },
}

-- Auto-trigger linting on save
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    lint.try_lint()
  end,
})

