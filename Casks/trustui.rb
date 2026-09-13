cask "trustui" do
  version "0.1.0"
  sha256 "ce08bb849578f68383a8113836ae58ba32a43ad3c60215402779642ad30b2581"

  url "https://github.com/qzmi4meister/trustui/releases/download/v#{version}/TrustUI-#{version}-universal.zip"
  name "TrustUI"
  desc "Native macOS interface for the TrustTunnel CLI"
  homepage "https://github.com/qzmi4meister/trustui"

  depends_on macos: ">= :sonoma"
  depends_on formula: "python@3.12"

  app "TrustUI.app"

  caveats <<~EOS
    TrustUI requires a separately installed TrustTunnel CLI and server configuration.
    Follow the built-in Guide or https://github.com/qzmi4meister/trustui#readme.

    This release is signed ad hoc and is not notarized by Apple.
    If you trust it and macOS blocks the first launch, open System Settings >
    Privacy & Security > Open Anyway after attempting to open the app.
    See https://support.apple.com/en-us/102445.
  EOS
end
