cask "trustui" do
  version "0.2.0"
  sha256 "c448b584a7d29e85ff21a8b3c3df7b1616235d59bfe8dea39988985b91782997"

  url "https://github.com/qzmi4meister/trustui/releases/download/v#{version}/TrustUI-#{version}-universal.zip"
  name "TrustUI"
  desc "Native macOS interface for the TrustTunnel CLI"
  homepage "https://github.com/qzmi4meister/trustui"

  depends_on macos: :sonoma
  depends_on formula: "python@3.12"

  app "TrustUI.app"

  caveats <<~EOS
    TrustUI requires a separately installed TrustTunnel CLI and server configuration.
    Follow the built-in Guide or https://github.com/qzmi4meister/trustui#readme.
  EOS
end
