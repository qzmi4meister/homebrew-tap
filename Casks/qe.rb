cask "qe" do
  version "1.0.0"
  sha256 "e0ffeabe978abd85100de1c8e4838688e560ca266f6d5563cb793f9a11014544"

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
