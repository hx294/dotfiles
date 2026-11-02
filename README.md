# dotfiles

Reusable Ubuntu 24.04 development configuration from the cloud account.

- zsh/: active shell configuration, environment loader and plugin references.
- vim/: Vim configuration and existing vim-plug loader.
- vscode/: local HTTP proxy settings and shared proxy environment.
- git/: identity template (no existing global Git configuration was present).
- xray/: VLESS Reality template containing placeholders only.
- system/: relevant installed package versions and tool versions.
- RESTORE.md: manual restore steps, dependencies and validation.

This is a selective development configuration backup, not a full OS image.
No SSH keys, authentication files, API keys, real node details, project .env files,
Conda environments, histories or runtime caches are included.
Review RESTORE.md before restoring. Proxy settings require local services on
10808 (SOCKS) and 10809 (HTTP). Existing runtime configuration is not changed by
committing this repository.
