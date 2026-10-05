cask "corbado" do
  version "1.0.2"
  sha256 "0ca1a45eaff7c569e7efd1b003703ab2ba83dea973312f231ec2fb16370e0375"

  url "https://github.com/corbado/homebrew-tap/releases/download/v1.0.2/corbado-1.0.2-darwin-arm64.tar.gz"
  name "Corbado Observe CLI"
  desc "Command-line client for Corbado Observe"
  homepage "https://www.corbado.com"

  depends_on :macos
  depends_on arch: :arm64
  depends_on formula: "jq"

  binary "corbado"
end
