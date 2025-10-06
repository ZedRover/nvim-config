return {
  "akinsho/toggleterm.nvim",
  version = "*",
  cmd = "ToggleTerm",  -- Load when ToggleTerm command is used
  keys = {
    { "<C-\\>", desc = "Toggle Terminal" },
    { "<leader>tf", desc = "Float Terminal" },
    { "<leader>th", desc = "Horizontal Terminal" },
    { "<leader>tv", desc = "Vertical Terminal" },
  },
  config = function()
    require("toggleterm").setup({
      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      open_mapping = [[<C-\>]],
      hide_numbers = true,
      shade_terminals = true,
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      persist_size = true,
      direction = "float",
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
    })
    
    -- Keymaps
    local keymap = vim.keymap.set
    
    keymap("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "Float Terminal" })
    keymap("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "Horizontal Terminal" })
    keymap("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", { desc = "Vertical Terminal" })
    
    -- Terminal mode mappings
    function _G.set_terminal_keymaps()
      local opts = {buffer = 0}
      keymap('t', '<esc>', [[<C-\><C-n>]], opts)
      keymap('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
      keymap('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
      keymap('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
      keymap('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
    end
    
    vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
  end,
}
