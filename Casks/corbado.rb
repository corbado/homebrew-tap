cask "corbado" do
  version "3.2.0"
  sha256 "28230226b1d79f36ca88b4ca80d10dbe1819a41957a9e4786cd8b9273b9a6450"

  url "https://github.com/corbado/homebrew-tap/releases/download/v3.2.0/corbado-3.2.0-darwin-arm64.tar.gz"
  name "Corbado Observe CLI"
  desc "Command-line client for Corbado Observe"
  homepage "https://www.corbado.com"

  depends_on :macos
  depends_on arch: :arm64
  depends_on formula: "jq"

  binary "corbado"
end
