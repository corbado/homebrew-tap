cask "corbado" do
  version "2.3.0"
  sha256 "f6f9451d30cf79782e5a1d34c161529bf28457cec60e816fe1f7f193c7a9e597"

  url "https://github.com/corbado/homebrew-tap/releases/download/v2.3.0/corbado-2.3.0-darwin-arm64.tar.gz"
  name "Corbado Observe CLI"
  desc "Command-line client for Corbado Observe"
  homepage "https://www.corbado.com"

  depends_on :macos
  depends_on arch: :arm64
  depends_on formula: "jq"

  binary "corbado"
end
