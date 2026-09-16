cask "qe" do
  version "0.7.1"
  sha256 "a2e174af4be86ec0f1cfe8f674a2f497cdc0c9fa7b620898ac087577353e94df"

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
