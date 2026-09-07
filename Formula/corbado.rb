class Corbado < Formula
  desc "Command-line client for Corbado Observe"
  homepage "https://www.corbado.com"
  version "0.2.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/corbado/homebrew-tap/releases/download/v0.2.0/corbado-0.2.0-darwin-arm64.tar.gz"
      sha256 "0c2e8e42f57c93eeaf2bbc4c16cdff3eff3026b42d72fb0379da7ec96ba68af8"
    end
    on_intel do
      url "https://github.com/corbado/homebrew-tap/releases/download/v0.2.0/corbado-0.2.0-darwin-x64.tar.gz"
      sha256 "c1436d80abe3b19a94edfd561a349427dc3fc7fca60fd251a72a5b56f5717c91"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbado/homebrew-tap/releases/download/v0.2.0/corbado-0.2.0-linux-arm64.tar.gz"
      sha256 "8fc9f813dc4dd2e1115227f73e6edbf98b514284c8a37e5a29db3ce1db02b47a"
    end
    on_intel do
      url "https://github.com/corbado/homebrew-tap/releases/download/v0.2.0/corbado-0.2.0-linux-x64.tar.gz"
      sha256 "655d1b39b0f5744592bbb90bf737c8d646e801be919c5cce00cbee558d7764c7"
    end
  end

  depends_on "jq"

  def install
    bin.install "corbado"
    pkgshare.install "THIRD-PARTY-NOTICES.txt"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/corbado --version").strip
    assert_match "event-search", shell_output("#{bin}/corbado --help")
  end
end
