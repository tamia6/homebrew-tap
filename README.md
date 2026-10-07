# Homebrew Tap

## AppDuo

Install [AppDuo](https://github.com/tamia6/AppDuo), a macOS application cloner:

```sh
brew install --cask tamia6/tap/appduo
```

The cask selects the native Apple Silicon or Intel build. Requires macOS 14 or newer; cloning applications also requires Xcode Command Line Tools. AppDuo is ad-hoc signed and is not Apple notarized.

To update:

```sh
brew update
brew upgrade --cask tamia6/tap/appduo
```

Uninstalling the cask preserves AppDuo's clone configuration and data.

## rfig

Install [rfig](https://github.com/tamia6/rfig):

```sh
brew install tamia6/tap/rfig
rfig setup
```

Open a new session of the configured shell after setup. rfig supports zsh, Bash 4.4+, and Fish 3.6+ on macOS and Linux.

To enable a specific shell, run `rfig setup --shell zsh`, `rfig setup --shell bash`, or `rfig setup --shell fish`.
