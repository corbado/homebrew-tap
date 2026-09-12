cask "corbado" do
  version "0.3.0"
  sha256 "a98b86a46dba98396fe4808c0393c7e6e4843a2b3393d47902c05b89f34f8118"

  url "https://github.com/corbado/homebrew-tap/releases/download/v0.3.0/corbado-0.3.0-darwin-arm64.tar.gz"
  name "Corbado Observe CLI"
  desc "Command-line client for Corbado Observe"
  homepage "https://www.corbado.com"

  depends_on :macos
  depends_on arch: :arm64
  depends_on formula: "jq"

  binary "corbado"
end
