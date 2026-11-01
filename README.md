# homebrew-netpeek

Homebrew tap for [Netpeek](https://github.com/Laaaaksh/netpeek).

## Install

```sh
brew tap Laaaaksh/netpeek
brew install --cask netpeek
```

### First launch

Netpeek isn't code-signed or notarized, so macOS Gatekeeper blocks the first
launch. Homebrew quarantines cask installs like any other download, so
you'll need one extra step the first time:

1. Try to open Netpeek (double-click it, or `open -a Netpeek`) — macOS will
   refuse and say the app "cannot be opened".
2. Go to **System Settings > Privacy & Security**, scroll down to the
   Security section, and click **Open Anyway** next to the Netpeek warning.
3. Confirm in the dialog that appears. After this, Netpeek launches normally.

## Uninstall

```sh
brew uninstall --cask netpeek
```

To also remove Netpeek's saved preferences and other app data, use `--zap`:

```sh
brew uninstall --zap --cask netpeek
```
