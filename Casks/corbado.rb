cask "corbado" do
  version "2.2.0"
  sha256 "7a25f46d0eeb2660527566b04f48d63d26fcf53d195e9b904f0190f29962c937"

  url "https://github.com/corbado/homebrew-tap/releases/download/v2.2.0/corbado-2.2.0-darwin-arm64.tar.gz"
  name "Corbado Observe CLI"
  desc "Command-line client for Corbado Observe"
  homepage "https://www.corbado.com"

  depends_on :macos
  depends_on arch: :arm64
  depends_on formula: "jq"

  binary "corbado"
end
