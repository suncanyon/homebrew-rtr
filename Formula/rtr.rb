class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.11"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.11/rtr-0.1.11-x86_64-apple-darwin.tar.gz"
      sha256 "4bc2bc5e2a33cd89227f7db81f352cb664df65bee3b648fa1654c434b5dfb815"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.11/rtr-0.1.11-aarch64-apple-darwin.tar.gz"
      sha256 "6dfd5dbace38f11425584c701cb1036355bc372b92fcd175266ad29110e19b18"
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
