cask "qe" do
  version "0.8.2"
  sha256 "2174087dfacf621c9c9f1b4e0256973bb94ec78d9e0fb9e28be71de34858cbfc"

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
