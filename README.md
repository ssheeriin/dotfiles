# Sherin's dotFiles

Personal configuration files for a modern development environment on macOS. This repository contains carefully curated dotfiles for Neovim, Fish shell, Zsh, and Neovide.

**Author:** Sherin Stephen  
**Contact:** [GitHub Profile](https://github.com/ssheeriin)  
**License:** MIT

## 📋 Table of Contents

- [Repository Structure](#-repository-structure)
- [Features](#-features)
  - [Neovim](#neovim)
  - [Fish Shell](#fish-shell)
  - [Neovide (Neovim GUI)](#neovide-neovim-gui)
- [Installation](#-installation)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
- [Configuration Details](#configuration-details)
  - [Neovim Settings](#neovim-settings)
  - [Key Features](#key-features)
- [Customization](#-customization)
  - [Adding New Plugins](#adding-new-plugins)
  - [Modifying Key Mappings](#modifying-key-mappings)
  - [Changing Color Scheme](#changing-color-scheme)
  - [Fish Aliases](#fish-aliases)
- [License](#-license)
- [Contributing](#-contributing)

## 📁 Repository Structure

```
dotfiles/
├── LICENSE                    # MIT License
├── README.md                  # This file
├── fish/                      # Fish shell configuration
│   └── config.fish           # Fish shell settings and aliases
├── neovide/                   # Neovide GUI configuration
│   └── config.toml           # Neovide settings and font configuration
├── nvim/                      # Neovim configuration
│   ├── init.lua              # Main Neovim entry point
│   ├── lua/user/             # Modular Lua configuration
│   │   ├── cmp.lua           # Auto-completion setup
│   │   ├── colorscheme.lua   # Color scheme configuration
│   │   ├── keymaps.lua       # Custom key mappings
│   │   ├── lualine.lua       # Status line configuration
│   │   ├── options.lua       # Neovim options and settings
│   │   ├── plugins.lua       # Plugin definitions (Lazy.nvim)
│   │   ├── telescope.lua     # Fuzzy finder configuration
│   │   └── treesitter.lua    # Syntax highlighting
│   └── plugin/               # Compiled plugin cache
└── zsh/                       # Zsh shell configuration
```

## ✨ Features

### Neovim
- **Plugin Manager**: Lazy.nvim for fast plugin management
- **Key Plugins**:
  - GitHub Copilot for AI-assisted coding
  - Treesitter for advanced syntax highlighting
  - NvimTree for file exploration
  - Telescope for fuzzy finding
  - Auto-completion with nvim-cmp
  - Lualine for a beautiful status line
- **Font**: JetBrainsMono Nerd Font (size 14)
- **Configuration**: 2-space indentation, relative line numbers, smart indenting

### Fish Shell
- **Aliases**:
  - `ls` → `lsd` (modern ls replacement)
  - `vi` → `nvim` (use Neovim instead of Vi)
  - `cat` → `bat` (syntax-highlighted cat)
- **Environment**: EDITOR set to nvim
- **Integration**: iTerm2 shell integration

### Neovide (Neovim GUI)
- **Theme**: Auto-detection (light/dark)
- **Font**: JetBrainsMono Nerd Font family with different weights
- **Features**: Tabs enabled for better workflow

## 🚀 Installation

### Prerequisites

Make sure you have the following installed:

```bash
# Neovim (latest stable)
brew install neovim

# Fish shell
brew install fish

# Modern CLI tools (for aliases)
brew install lsd bat

# JetBrainsMono Nerd Font
brew install --cask font-jetbrains-mono-nerd-font

# Neovide (optional GUI)
brew install --cask neovide
```

### Setup

1. **Clone the repository:**
   ```bash
   git clone https://github.com/ssheeriin/dotfiles.git ~/Dev/Workspace/dotfiles
   ```

2. **Create symbolic links:**
   ```bash
   # Neovim configuration
   ln -sf ~/Dev/Workspace/dotfiles/nvim ~/.config/nvim

   # Fish shell configuration
   ln -sf ~/Dev/Workspace/dotfiles/fish ~/.config/fish

   # Zsh configuration (if using)
   ln -sf ~/Dev/Workspace/dotfiles/zsh ~/.config/zsh

   # Neovide configuration
   ln -sf ~/Dev/Workspace/dotfiles/neovide ~/.config/neovide
   ```

3. **Install Neovim plugins:**
   ```bash
   # Open Neovim and plugins will auto-install via Lazy.nvim
   nvim
   ```

4. **Set Fish as default shell (optional):**
   ```bash
   echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
   chsh -s /opt/homebrew/bin/fish
   ```

## ⚙️ Configuration Details

### Neovim Settings
- **Indentation**: 2 spaces, smart indenting
- **UI**: Relative line numbers, cursor line highlighting
- **Scrolling**: 8 lines offset for better context
- **Colors**: 24-bit RGB terminal colors
- **Mouse**: Enabled for GUI-like interaction

### Key Features
- **Auto-completion**: Intelligent code completion
- **Fuzzy Finding**: Quick file and content search with Telescope
- **File Tree**: Easy project navigation with NvimTree
- **Git Integration**: Built-in Git workflow support
- **Syntax Highlighting**: Advanced parsing with Treesitter

## 🔧 Customization

### Adding New Plugins
Edit `nvim/lua/user/plugins.lua` and add your plugin:
```lua
{ "author/plugin-name", config = function() ... end }
```

### Modifying Key Mappings
Edit `nvim/lua/user/keymaps.lua` to customize shortcuts.

### Changing Color Scheme
Edit `nvim/lua/user/colorscheme.lua` to switch themes.

### Fish Aliases
Add new aliases in `fish/config.fish`:
```fish
alias myalias "mycommand"
```

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🤝 Contributing

Feel free to fork this repository and customize it for your own needs. If you have improvements or suggestions, pull requests are welcome!

---

**Note**: These dotfiles are tailored for macOS. Some adjustments may be needed for other operating systems.
