# Dotfiles

This repository contains my personal dotfiles and configuration files for various tools and applications. It uses GNU Stow to manage symlinks and Homebrew to install packages.

## What's Included

This dotfiles repository includes configurations for:

- **Shell**: Fish shell configuration with custom functions and aliases
- **Package Management**: Homebrew with an extensive Brewfile
- **Development Tools**: Docker, Kubernetes, Terraform, and more
- **Task Automation**: Taskfile configurations
- **Git**: Git configuration
- **Terminal**: Configuration for various terminal emulators (iTerm2, Wezterm, Alacritty)
- **Editors**: Neovim, VSCode with extensions

## Prerequisites

- macOS (primarily designed for macOS)
- Git

## Installation

1. Clone this repository to your home directory:

```bash
git clone https://github.com/yourusername/dotfiles.git ~/.dotfiles
```

2. Run the setup script:

```bash
cd ~/.dotfiles
./setup.sh
```

The setup script will:
- Install Homebrew if not already installed
- Install all packages, casks, and applications defined in the Brewfile
- Set Fish as your default shell
- Use GNU Stow to create symlinks for all configuration directories

## How It Works

This repository uses [GNU Stow](https://www.gnu.org/software/stow/), a symlink farm manager, to create symlinks from the files in this repository to your home directory.

The `setup.sh` script:
1. Installs Homebrew if not already installed
2. Installs all packages from the Brewfile
3. Sets Fish as the default shell
4. Uses Stow to create symlinks for each top-level directory

## Customization

Feel free to fork this repository and customize it to your needs:

1. Modify the `Brewfile` to add or remove packages
2. Edit configuration files in each directory to match your preferences
3. Update the `setup.sh` script if needed

## Key Components

### Brewfile

The Brewfile includes:
- Command-line tools for development (Docker, Kubernetes, Terraform, etc.)
- Programming languages and environments (Python, Node.js, Rust, etc.)
- GUI applications via casks (VSCode, Slack, Firefox, etc.)
- Mac App Store applications
- VSCode extensions

### Fish Shell Configuration

The Fish shell configuration includes:
- Custom functions for Kubernetes, Docker, and more
- Aliases for common commands
- Integration with tools like ASDF

### Taskfile

Task automation using [Task](https://taskfile.dev/) with various predefined tasks.

## License

This project is licensed under the MIT License - see the LICENSE file for details.