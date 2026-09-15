cask "qe" do
  version "0.3.0"
  sha256 "78ba09e59d347e1123e94f4b1bf737a20b313515ba3f95d76ba4c740c3461dc9"

  url "https://github.com/qzmi4meister/qe/releases/download/v#{version}/QE-#{version}-arm64.zip"
  name "QE"
  desc "Lightweight file manager with tabs and ZIP/7z archives"
  homepage "https://github.com/qzmi4meister/qe"

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "QE.app"

  zap trash: [
    "~/Library/Preferences/local.qe.files.plist",
    "~/Library/Saved Application State/local.qe.files.savedState",
  ]

  caveats <<~EOS
    This release is signed ad hoc and is not notarized by Apple.
    If you trust it and macOS blocks the first launch, open System Settings >
    Privacy & Security > Open Anyway after attempting to open the app.
    See https://support.apple.com/en-us/102445.
  EOS
end
