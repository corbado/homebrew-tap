cask "corbado" do
  version "0.2.1"
  sha256 "c77bd2307ead26da7e20bb14819901c5a8d20fefc8c7d34701077593814ffd71"

  url "https://github.com/corbado/homebrew-tap/releases/download/v0.2.1/corbado-0.2.1-darwin-arm64.tar.gz"
  name "Corbado Observe CLI"
  desc "Command-line client for Corbado Observe"
  homepage "https://www.corbado.com"

  depends_on :macos
  depends_on arch: :arm64
  depends_on formula: "jq"

  binary "corbado"
end
