cask "corbado" do
  version "3.0.0"
  sha256 "fa047ad46fcf4167f1acd5a7fe9bee204cb9c9726cebff33f9c820dc9a65cbf7"

  url "https://github.com/corbado/homebrew-tap/releases/download/v3.0.0/corbado-3.0.0-darwin-arm64.tar.gz"
  name "Corbado Observe CLI"
  desc "Command-line client for Corbado Observe"
  homepage "https://www.corbado.com"

  depends_on :macos
  depends_on arch: :arm64
  depends_on formula: "jq"

  binary "corbado"
end
