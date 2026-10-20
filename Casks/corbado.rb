cask "corbado" do
  version "2.1.0"
  sha256 "b3a75d63d665e1652c96e6ae979182a743dd393d139adf1ce919a3921ad6a6bf"

  url "https://github.com/corbado/homebrew-tap/releases/download/v2.1.0/corbado-2.1.0-darwin-arm64.tar.gz"
  name "Corbado Observe CLI"
  desc "Command-line client for Corbado Observe"
  homepage "https://www.corbado.com"

  depends_on :macos
  depends_on arch: :arm64
  depends_on formula: "jq"

  binary "corbado"
end
