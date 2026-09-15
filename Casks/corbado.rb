cask "corbado" do
  version "1.0.0"
  sha256 "2e8a4792cec795135a66b24fa82d115a777718d0fd0761af967810d654445b67"

  url "https://github.com/corbado/homebrew-tap/releases/download/v1.0.0/corbado-1.0.0-darwin-arm64.tar.gz"
  name "Corbado Observe CLI"
  desc "Command-line client for Corbado Observe"
  homepage "https://www.corbado.com"

  depends_on :macos
  depends_on arch: :arm64
  depends_on formula: "jq"

  binary "corbado"
end
