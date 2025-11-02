return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        python = { "ruff_format" },  -- Use Ruff for Python formatting
        sh = { "shfmt" },            -- Shell formatter
        bash = { "shfmt" },
        zsh = { "shfmt" },
        json = { "prettier" },       -- JSON formatter
        jsonc = { "prettier" },      -- JSON with comments
      },

      -- Format on save (optional)
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    })

    -- Manual format keybinding
    vim.keymap.set({ "n", "v" }, "<leader>fm", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      })
    end, { desc = "Format file or range" })
  end,
}
