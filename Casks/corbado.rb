cask "corbado" do
  version "2.4.0"
  sha256 "10e70344c59015b1b89dcb036aff9058be1a4bcc8c05079b0c86334ecd006268"

  url "https://github.com/corbado/homebrew-tap/releases/download/v2.4.0/corbado-2.4.0-darwin-arm64.tar.gz"
  name "Corbado Observe CLI"
  desc "Command-line client for Corbado Observe"
  homepage "https://www.corbado.com"

  depends_on :macos
  depends_on arch: :arm64
  depends_on formula: "jq"

  binary "corbado"
end
