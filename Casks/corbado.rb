cask "corbado" do
  version "2.0.0"
  sha256 "f7bb79b5e9110a76ebc514d583cb998d2bc339248052616d2b494a1787bafc85"

  url "https://github.com/corbado/homebrew-tap/releases/download/v2.0.0/corbado-2.0.0-darwin-arm64.tar.gz"
  name "Corbado Observe CLI"
  desc "Command-line client for Corbado Observe"
  homepage "https://www.corbado.com"

  depends_on :macos
  depends_on arch: :arm64
  depends_on formula: "jq"

  binary "corbado"
end
