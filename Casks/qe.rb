cask "qe" do
  version "0.9.4"
  sha256 "24cb0f7d7eec71630ad20bec8a289c449431dad51870008b2512035a00ff3e5b"

  url "https://github.com/qzmi4meister/qe/releases/download/v#{version}/QE-#{version}-arm64.zip"
  name "QE"
  desc "Lightweight file manager with tabs and ZIP/7z archives"
  homepage "https://github.com/qzmi4meister/qe"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "QE.app"

  zap trash: [
    "~/Library/Preferences/local.qe.files.plist",
    "~/Library/Saved Application State/local.qe.files.savedState",
  ]
end
