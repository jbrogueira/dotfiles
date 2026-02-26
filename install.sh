#!/usr/bin/env bash
# Bootstrap dotfiles on a new machine.
# Run: bash install.sh

set -e

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

symlink() {
  local src="$1" dst="$2"
  mkdir -p "$(dirname "$dst")"
  if [ -e "$dst" ] && [ ! -L "$dst" ]; then
    echo "  Backing up existing $dst → $dst.bak"
    mv "$dst" "$dst.bak"
  fi
  ln -sf "$src" "$dst"
  echo "  $dst → $src"
}

echo "==> Vim"
symlink "$DOTFILES/.vimrc" "$HOME/.vimrc"

echo "==> Git"
symlink "$DOTFILES/.gitconfig"       "$HOME/.gitconfig"
symlink "$DOTFILES/config/git/ignore" "$HOME/.config/git/ignore"

echo "==> Claude"
symlink "$DOTFILES/claude/skills"        "$HOME/.claude/skills"
symlink "$DOTFILES/claude/CLAUDE.md"     "$HOME/.claude/CLAUDE.md"
symlink "$DOTFILES/claude/settings.json" "$HOME/.claude/settings.json"

if [[ "$OSTYPE" == "darwin"* ]]; then
  echo "==> iTerm2"
  defaults write com.googlecode.iterm2 PrefsCustomFolder -string "$DOTFILES/iterm2"
  defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
  echo "  Preferences will load from $DOTFILES/iterm2 (restart iTerm2 to apply)"
fi

echo "Done."
