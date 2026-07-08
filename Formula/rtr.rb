class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.25"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.25/rtr-0.1.25-x86_64-apple-darwin.tar.gz"
      sha256 "098de383e3a1b4faf715bd3e0dc2f0c32804d4ccaf28b9a2cfe4ed2e30052982"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.25/rtr-0.1.25-aarch64-apple-darwin.tar.gz"
      sha256 "1cd22c5dada997825fae5b51296244a92a8266d4fb80e06c7f5ba60b135c912d"
    end
  end

  def install
    bin.install "rtr"
  end

  def post_install
    ohai "RTR CLI installed. Run rtr --help to get started."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rtr --version")
    assert_match "RTR", shell_output("#{bin}/rtr --help")
  end
end
