class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.1"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.1/rtr-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "6ffcaf99767c6e6caaad33c4a70b2cd9c2c344ed4ce85133d53a30479ee405e6"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.1/rtr-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "fa59346cc906be13f9b8e8dcc51e384ff95ec5ddc24db2ffc3ab349bbc6f2436"
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
