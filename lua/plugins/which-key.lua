return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")
    
    wk.setup({
      preset = "modern",
      delay = 500,
      icons = {
        separator = "→",
      },
    })
    
    -- Register key groups with descriptions
    wk.add({
      -- File operations
      { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "File Explorer" },
      { "<leader>m", "<cmd>Glow<cr>", desc = "Markdown Preview" },
      
      -- Window focus
      { "<leader>h", "<C-w>h", desc = "Focus Left (File Tree)" },
      { "<leader>l", "<C-w>l", desc = "Focus Right (Editor)" },
      
      -- Save/Quit
      { "<leader>w", "<cmd>w<cr>", desc = "Save" },
      { "<leader>wq", "<cmd>wq<cr>", desc = "Save & Quit" },
      { "<leader>q", "<cmd>q<cr>", desc = "Quit" },
      { "<leader>Q", "<cmd>qa<cr>", desc = "Quit All" },
      
      -- Buffer
      { "<leader>x", "<cmd>bdelete<cr>", desc = "Close Buffer" },
      
      -- Window splits (group)
      { "<leader>s", group = "Split" },
      { "<leader>sv", "<cmd>vsplit<cr>", desc = "Vertical Split" },
      { "<leader>sh", "<cmd>split<cr>", desc = "Horizontal Split" },
      { "<leader>sc", "<C-w>c", desc = "Close Window" },
      { "<leader>so", "<C-w>o", desc = "Close Other Windows" },
      
      -- LSP (group)
      { "<leader>r", group = "Refactor" },
      { "<leader>rn", desc = "Rename Symbol" },
      { "<leader>c", group = "Code" },
      { "<leader>ca", desc = "Code Action" },
      
      -- Format/Find
      { "<leader>f", group = "Format/Find" },
      { "<leader>fm", desc = "Format File" },
      
      -- Terminal (group)
      { "<leader>t", group = "Terminal" },
    })
  end,
}
