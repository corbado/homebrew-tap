cask "corbado" do
  version "3.1.0"
  sha256 "20f73b08d25e437fa009ea7fd29adc3bc3032c133e238e53b847930e5984d064"

  url "https://github.com/corbado/homebrew-tap/releases/download/v3.1.0/corbado-3.1.0-darwin-arm64.tar.gz"
  name "Corbado Observe CLI"
  desc "Command-line client for Corbado Observe"
  homepage "https://www.corbado.com"

  depends_on :macos
  depends_on arch: :arm64
  depends_on formula: "jq"

  binary "corbado"
end
