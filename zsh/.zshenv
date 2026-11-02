# Load server-side proxy environment for SSH and VS Code children.
if [ -r "$HOME/.vscode-server/server-env-setup" ]; then
  . "$HOME/.vscode-server/server-env-setup"
fi
