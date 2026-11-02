# Restore on Ubuntu 24.04

Run as the destination regular user. Review files before applying them.

1. Install system dependencies:
   sudo apt-get update
   sudo apt-get install $(cat system/apt-packages.txt)
   Recorded versions in packages.tsv describe the source; availability may change.
2. Install Oh My Zsh from https://github.com/ohmyzsh/ohmyzsh into ~/.oh-my-zsh.
   See zsh/dependencies.md for the recorded revision. Do not overwrite an existing checkout.
3. Back up existing ~/.zshrc, ~/.zshenv, ~/.vimrc, ~/.vim,
   ~/.vscode-server/server-env-setup and remote Machine/settings.json before copying.
4. Copy zsh/.zshrc and zsh/.zshenv to your home directory.
   Copy vim/.vimrc and vim/.vim to your home directory.
5. Create ~/.vscode-server if needed; copy vscode/server-env-setup there.
   This file is loaded by .zshenv, so shells also depend on it outside VS Code.
   Merge vscode/settings.json into ~/.vscode-server/data/Machine/settings.json;
   preserve unrelated settings. Keep TLS verification enabled.
6. If desired, set the login shell using chsh -s /usr/bin/zsh, then reconnect.
   Restart the remote VS Code server after saving work so its child processes
   inherit the new environment. Existing processes do not update automatically.
7. Configure Git identity manually using git/.gitconfig.example as a template.

## Proxy prerequisites
HTTP/HTTPS use http://127.0.0.1:10809; SOCKS uses socks5h://127.0.0.1:10808.
These require Xray or another compatible service on the same machine.
Environment variables affect programs that support them, not all machine traffic.
Do not enable these variables on a machine without the matching proxy service.

xray/config.json.example is a credential-free template, NOT a deployable backup.
Fill node details privately outside this repository. The example port 443 is a
placeholder; use the actual node port. Install Xray from its official project,
protect the live configuration permissions, validate using xray run -test -config
/path/to/config.json, then manage it with the system service. Never commit the
filled live configuration, UUID, private keys, tokens, or proxy subscription URLs.
This repository does not install a system service or automatically restart it.

## Check
printenv HTTP_PROXY HTTPS_PROXY ALL_PROXY
curl --max-time 20 -I https://www.google.com
A populated environment alone does not prove the node is reachable.
