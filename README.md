# My Neovim Configuration

A modern, minimal Neovim configuration focused on Python and Shell development.

## ✨ Features

- 🎨 **Theme**: Gruvbox colorscheme
- 📁 **File Explorer**: Neo-tree
- 💻 **Terminal**: ToggleTerm with floating window support
- 🔧 **LSP**: Python (Pyright) and Bash support
- ✍️ **Auto-completion**: nvim-cmp with multiple sources
- 🎯 **Formatting**: Ruff for Python, shfmt for Shell
- 🌳 **Syntax Highlighting**: Treesitter
- ⌨️ **Key Hints**: which-key for discovering shortcuts
- 📝 **Markdown Preview**: Glow

## 📦 Plugin List

### Core
- [lazy.nvim](https://github.com/folke/lazy.nvim) - Plugin manager
- [which-key.nvim](https://github.com/folke/which-key.nvim) - Keybinding helper

### UI
- [gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim) - Colorscheme
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) - File explorer
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) - Icons

### LSP & Completion
- [mason.nvim](https://github.com/williamboman/mason.nvim) - LSP installer
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - LSP configurations
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Completion engine
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet engine

### Editing
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Syntax highlighting
- [conform.nvim](https://github.com/stevearc/conform.nvim) - Code formatting

### Tools
- [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) - Terminal manager
- [glow.nvim](https://github.com/ellisonleao/glow.nvim) - Markdown preview

## ⚡ Quick Start

### Installation

1. **Backup existing config** (if any):
```bash
mv ~/.config/nvim ~/.config/nvim.backup
```

2. **Clone this repository**:
```bash
git clone https://github.com/YOUR_USERNAME/nvim-config.git ~/.config/nvim
```

3. **Open Neovim**:
```bash
nvim
```

Plugins will be automatically installed on first launch.

4. **Install formatters** (after plugins are installed):
```vim
:MasonInstall ruff shfmt
```

### Requirements

- Neovim >= 0.9.0
- Git
- A [Nerd Font](https://www.nerdfonts.com/) for icons
- For Markdown preview: [glow](https://github.com/charmbracelet/glow)

## ⌨️ Key Bindings

### Leader Key
`<Space>` is the leader key.

### Essential Shortcuts

| Key | Action |
|-----|--------|
| `<Space>e` | Toggle file explorer |
| `<Ctrl-\>` | Toggle terminal |
| `<Ctrl-s>` | Save file |
| `<Space>w` | Save |
| `<Space>q` | Quit |

### File Navigation

| Key | Action |
|-----|--------|
| `<Ctrl-h/j/k/l>` | Navigate between windows |
| `<Shift-h/l>` | Previous/Next buffer |
| `<Space>x` | Close buffer |

### LSP (Python/Shell files)

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gr` | Show references |
| `K` | Hover documentation |
| `<Space>rn` | Rename symbol |
| `<Space>ca` | Code action |
| `<Space>fm` | Format file |

### Terminal

| Key | Action |
|-----|--------|
| `<Ctrl-\>` | Toggle terminal |
| `<Space>tf` | Float terminal |
| `<Space>th` | Horizontal terminal |
| `<Space>tv` | Vertical terminal |
| `<Esc>` (in terminal) | Exit terminal mode |

### Auto-completion (Insert mode)

| Key | Action |
|-----|--------|
| `<Ctrl-Space>` | Trigger completion |
| `<Ctrl-j/k>` | Next/Previous suggestion |
| `<Tab>` | Select/Expand snippet |
| `<Enter>` | Confirm selection |

## 📁 File Structure

```
~/.config/nvim/
├── init.lua                 # Entry point
├── lazy-lock.json          # Plugin versions (auto-generated)
├── lua/
│   ├── config/
│   │   ├── options.lua     # Vim options
│   │   ├── keymaps.lua     # Key mappings
│   │   └── lazy.lua        # Lazy.nvim setup
│   ├── plugins/
│   │   ├── cmp.lua         # Auto-completion
│   │   ├── conform.lua     # Code formatting
│   │   ├── glow.lua        # Markdown preview
│   │   ├── lsp.lua         # LSP configuration
│   │   ├── mason.lua       # LSP installer
│   │   ├── neo-tree.lua    # File explorer
│   │   ├── toggleterm.lua  # Terminal
│   │   └── which-key.lua   # Key hints
│   └── plugins.lua         # Additional plugins (theme, treesitter)
└── README.md
```

## 🛠️ Customization

### Change Theme
Edit `lua/plugins.lua` and replace `gruvbox` with your preferred colorscheme.

### Add More LSP Servers
Edit `lua/plugins/lsp.lua` and add servers to `ensure_installed` list.

### Modify Key Bindings
Edit `lua/config/keymaps.lua` and `lua/plugins/which-key.lua`.

## 📝 Notes

- This config uses Ruff for Python formatting (fast and modern)
- LSP servers are automatically installed via Mason
- Format on save is enabled by default
- Terminal uses floating window by default

## 🤝 Credits

Thanks to all the amazing plugin authors and the Neovim community!

## 📄 License

MIT
