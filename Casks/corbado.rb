cask "corbado" do
  version "2.1.2"
  sha256 "f31ae372a16e964b75054e015d1c7f7db02a8a9515e26c0e832a19a078c71a94"

  url "https://github.com/corbado/homebrew-tap/releases/download/v2.1.2/corbado-2.1.2-darwin-arm64.tar.gz"
  name "Corbado Observe CLI"
  desc "Command-line client for Corbado Observe"
  homepage "https://www.corbado.com"

  depends_on :macos
  depends_on arch: :arm64
  depends_on formula: "jq"

  binary "corbado"
end
