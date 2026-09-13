# Homebrew Tap

Homebrew packages maintained by [qzmi4meister](https://github.com/qzmi4meister).

## Install TrustUI

[TrustUI](https://github.com/qzmi4meister/trustui) is a native macOS interface for the TrustTunnel CLI, with English and Russian interfaces and a built-in setup guide.

```sh
brew install --cask qzmi4meister/tap/trustui
open -a TrustUI
```

Requires macOS 14 or later. The app includes Apple Silicon and Intel binaries. Homebrew installs Python 3.12 as a dependency. Install and configure the TrustTunnel CLI separately; follow the [setup instructions](https://github.com/qzmi4meister/trustui#readme).

The app is signed ad hoc and is not notarized by Apple. If macOS blocks its first launch and you trust the release, use **System Settings → Privacy & Security → Open Anyway** after attempting to open it. See [Apple's instructions](https://support.apple.com/en-us/102445). This cask does not change Gatekeeper settings or remove quarantine.

## Update

```sh
brew update
brew upgrade --cask qzmi4meister/tap/trustui
```

## Uninstall

Stop the tunnel in TrustUI first, then run:

```sh
brew uninstall --cask qzmi4meister/tap/trustui
brew untap qzmi4meister/tap
```

Uninstalling the UI does not stop a running tunnel or delete CLI configurations, preferences, backups, or logs.

If you previously installed from `trustui/local`, follow the [migration instructions](https://github.com/qzmi4meister/trustui#moving-from-the-old-local-tap) before installing this cask.

## Maintenance

For each release, update the cask version and SHA-256 checksum to match the published universal ZIP in [TrustUI Releases](https://github.com/qzmi4meister/trustui/releases). Keep the release asset unchanged after publishing; ship changes under a new version.

Validate with `brew audit --cask qzmi4meister/tap/trustui` and `brew fetch --cask qzmi4meister/tap/trustui`.

## License

The cask definition is available under the [MIT License](LICENSE). Packaged applications retain their own licenses.
