# dotfiles

Ubuntu 24.04 development shell and Vim configuration. No credentials or SSH keys.

## Files
- zsh/.zshrc: cloud-adapted Zsh configuration, mortalscumbag theme, Git plugin, vi keybindings.
- vim/.vimrc and vim/.vim/: Vim configuration and vim-plug loader.

## Restore
Install zsh, zsh-autosuggestions, zsh-syntax-highlighting and vim using apt.
Install Oh My Zsh from its official project https://github.com/ohmyzsh/ohmyzsh after reviewing its instructions.
Back up existing configuration, then copy zsh/.zshrc to ~/.zshrc, vim/.vimrc to ~/.vimrc and vim/.vim to ~/.vim.
Use chsh -s /usr/bin/zsh if desired.

Keep API keys in a separate private file outside this repository. Conda, WSL paths, proxy credentials, histories and runtime caches are not included.
Oh My Zsh and installed plugins are dependencies, not vendored here.
