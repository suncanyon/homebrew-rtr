class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.41"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.41/rtr-0.1.41-x86_64-apple-darwin.tar.gz"
      sha256 "756eea2d2a0790fe89c433c885038921f1aeb268b58a2cc687675f65cb0e0d2d"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.41/rtr-0.1.41-aarch64-apple-darwin.tar.gz"
      sha256 "09e25ae801e5ea428aa131d4b0915dd8dd9d37301f75c32c96819e93e9d6602f"
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
