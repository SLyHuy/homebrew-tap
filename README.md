# Homebrew Tap for SLyHuy

Personal [Homebrew](https://brew.sh) tap for macOS apps by [@SLyHuy](https://github.com/SLyHuy).

## Available Casks

| Cask | Description | Install |
| --- | --- | --- |
| [`s-display`](https://github.com/SLyHuy/S-Display) | Menu bar app for display BlackOut, brightness sync, and sharp HiDPI scaling (Apple Silicon, macOS 14+) | `brew install --cask SLyHuy/tap/s-display` |

## Usage

```bash
# Install directly
brew install --cask SLyHuy/tap/s-display

# Or tap once, then install
brew tap SLyHuy/tap
brew install --cask s-display

# Upgrade
brew upgrade --cask s-display

# Uninstall (add --zap to also remove preferences and Application Support data)
brew uninstall --cask s-display
```
