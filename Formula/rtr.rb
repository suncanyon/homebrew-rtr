class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.0/rtr-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "72237aa935417373c81852c612b2b3c388d344f95a6cba92b7cb72c94f588a10"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.0/rtr-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "48582fb5105286b4a8ad87ee63752dde92b17650129f29aedb0fb0b7b3d68b0b"
    end
  end

  def install
    bin.install "rtr"
  end

  def post_install
    ohai "RTR CLI installed!"
    ohai "Quick start:"
    ohai "  rtr claude setup    # Connect Claude Code to RTR"
    ohai "  rtr init            # Set up the proxy for any agent"
    ohai "  rtr --help          # Full command reference"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rtr --version")
    assert_match "RTR", shell_output("#{bin}/rtr --help")
  end
end
