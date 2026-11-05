cask "corbado" do
  version "2.6.0"
  sha256 "b99260199198b1b7400e91691176baee5355e3b51557ec84a0082c5ba16ca876"

  url "https://github.com/corbado/homebrew-tap/releases/download/v2.6.0/corbado-2.6.0-darwin-arm64.tar.gz"
  name "Corbado Observe CLI"
  desc "Command-line client for Corbado Observe"
  homepage "https://www.corbado.com"

  depends_on :macos
  depends_on arch: :arm64
  depends_on formula: "jq"

  binary "corbado"
end
