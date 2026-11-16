cask "corbado" do
  version "3.3.0"
  sha256 "434a02010a74f3c78bea51527140b8fefbbbf00f6cc4f154e6bebde8fecb90a8"

  url "https://github.com/corbado/homebrew-tap/releases/download/v3.3.0/corbado-3.3.0-darwin-arm64.tar.gz"
  name "Corbado Observe CLI"
  desc "Command-line client for Corbado Observe"
  homepage "https://www.corbado.com"

  depends_on :macos
  depends_on arch: :arm64
  depends_on formula: "jq"

  binary "corbado"
end
