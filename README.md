# Homebrew Tap

macOS applications maintained by [qzmi4meister](https://github.com/qzmi4meister).

## Applications

| App | Purpose | Requirements |
| --- | --- | --- |
| [QE](https://github.com/qzmi4meister/qe) | Lightweight file manager with tabs, ZIP/7z archives and file associations | macOS 26+, Apple Silicon |
| [TrustUI](https://github.com/qzmi4meister/trustui) | Native interface for the TrustTunnel CLI | macOS 14+, Apple Silicon or Intel |

## Install

```sh
brew install --cask qzmi4meister/tap/qe
open -a QE
```

Or install TrustUI:

```sh
brew install --cask qzmi4meister/tap/trustui
open -a TrustUI
```

QE has an English interface and needs no additional runtime dependencies. TrustUI has English and Russian interfaces; Homebrew installs Python 3.12 for it. Install and configure the TrustTunnel CLI separately using the [TrustUI setup instructions](https://github.com/qzmi4meister/trustui#readme).

Both apps are signed ad hoc and are not notarized by Apple. If macOS blocks the first launch and you trust the release, use **System Settings → Privacy & Security → Open Anyway** after attempting to open it. See [Apple's instructions](https://support.apple.com/en-us/102445).

## Update

```sh
brew update
brew upgrade --cask qzmi4meister/tap/qe
# Or:
brew upgrade --cask qzmi4meister/tap/trustui
```

## Uninstall

```sh
brew uninstall --cask qzmi4meister/tap/qe
# Or, after stopping the tunnel in TrustUI:
brew uninstall --cask qzmi4meister/tap/trustui
```

Normal uninstall preserves application preferences. For QE, add `--zap` to also remove its saved tabs and file associations; user files are not removed. Uninstalling TrustUI does not stop a running tunnel or delete CLI configurations, preferences, backups, or logs.

If you no longer use any apps from this tap:

```sh
brew untap qzmi4meister/tap
```

## Maintenance

Each app has its own file in `Casks/`. To add another app, create a cask and add it to the table above. For a release, update only that app's version and SHA-256 checksum to match its published asset. Keep published assets unchanged; ship corrections under a new version.

Validate the cask and its download, replacing `qe` with the app's token when needed:

```sh
brew audit --cask qzmi4meister/tap/qe
brew fetch --cask qzmi4meister/tap/qe
```

## License

Cask definitions are available under the [MIT License](LICENSE). Packaged applications retain their own licenses.
