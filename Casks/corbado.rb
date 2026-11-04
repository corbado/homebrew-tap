cask "corbado" do
  version "2.5.0"
  sha256 "e94dfbb43a991dddb6b2720c678a709c28b056b5002231fca5df05c164b4c68c"

  url "https://github.com/corbado/homebrew-tap/releases/download/v2.5.0/corbado-2.5.0-darwin-arm64.tar.gz"
  name "Corbado Observe CLI"
  desc "Command-line client for Corbado Observe"
  homepage "https://www.corbado.com"

  depends_on :macos
  depends_on arch: :arm64
  depends_on formula: "jq"

  binary "corbado"
end
