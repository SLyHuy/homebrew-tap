# Homebrew Tap for SLyHuy

Personal [Homebrew](https://brew.sh) tap for macOS apps by [@SLyHuy](https://github.com/SLyHuy).

## Available Casks

| Cask | Description | Install |
| --- | --- | --- |
| [`s-display`](https://github.com/SLyHuy/S-Display) | Menu bar app for display BlackOut, brightness sync, and sharp HiDPI scaling (Apple Silicon, macOS 14+) | `brew install --cask SLyHuy/tap/s-display` |
| [`skey`](https://github.com/SLyHuy/SKey) | Minimal Vietnamese Telex input method for macOS, tuned for developers (Universal, macOS 14+) | `brew install --cask SLyHuy/tap/skey` |

## Usage

```bash
# Install directly
brew install --cask SLyHuy/tap/s-display
brew install --cask SLyHuy/tap/skey

# Or tap once, then install
brew tap SLyHuy/tap
brew install --cask s-display
brew install --cask skey

# Upgrade
brew upgrade --cask s-display
brew upgrade --cask skey

# Uninstall (add --zap to also remove preferences and Application Support data)
brew uninstall --cask s-display
brew uninstall --cask skey
```
