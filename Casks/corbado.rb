cask "corbado" do
  version "1.0.1"
  sha256 "3f0daa1f8a11a232d9123bc35828c9cd42449753d5482dd7747cc0d57be2041f"

  url "https://github.com/corbado/homebrew-tap/releases/download/v1.0.1/corbado-1.0.1-darwin-arm64.tar.gz"
  name "Corbado Observe CLI"
  desc "Command-line client for Corbado Observe"
  homepage "https://www.corbado.com"

  depends_on :macos
  depends_on arch: :arm64
  depends_on formula: "jq"

  binary "corbado"
end
