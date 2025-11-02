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
      },
      filesystem = {
        follow_current_file = {
          enabled = true,
        },
        use_libuv_file_watcher = true,
        filtered_items = {
          visible = true,  -- Show hidden files by default
          hide_dotfiles = false,  -- Don't hide dotfiles
          hide_gitignored = false,  -- Don't hide gitignored files
          hide_by_name = {
            -- You can add specific files/folders to hide here
            -- ".git",
            -- "node_modules",
          },
          never_show = {
            -- Files that should NEVER be shown
            ".DS_Store",
            "thumbs.db",
          },
        },
      },
    })
    
    -- Keybinding
    vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "File Explorer" })
  end,
}
