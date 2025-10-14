return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = false,  -- Load immediately, not lazy
  config = function()
    require("neo-tree").setup({
      window = {
        position = "left",
        width = 30,
        enable_preview = true,
        
      },
      filesystem = {
        follow_current_file = {
          enabled = true,
        },
        use_libuv_file_watcher = true,
      },
    })
    
    -- Keybinding
    vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "File Explorer" })
    vim.keymap.set("n", "<leader>o", "<C-w>p", { desc = "Toggle focus between editor and Neo-tree" })
  end,
}
