# dotfiles

Personal config files for macOS and Linux.

## Contents

| File/Dir | Symlinked to |
|---|---|
| `.vimrc` | `~/.vimrc` |
| `.gitconfig` | `~/.gitconfig` |
| `config/git/ignore` | `~/.config/git/ignore` |
| `claude/CLAUDE.md` | `~/.claude/CLAUDE.md` |
| `claude/settings.json` | `~/.claude/settings.json` |
| `claude/skills/` | `~/.claude/skills` |
| `config/starship/starship.toml` | `~/.config/starship.toml` |
| `config/btop/btop.conf` | `~/.config/btop/btop.conf` |
| `config/zed/settings.json` | `~/.config/zed/settings.json` |
| `config/ghostty/config` | Ghostty config (OS-dependent path) |
| `iterm2/` | iTerm2 preferences folder (macOS only) |

## Bootstrap

```bash
git clone https://github.com/jbrogueira/dotfiles ~/dotfiles
bash ~/dotfiles/install.sh
```
