class Rtr < Formula
  desc "Universal CLI for the RTR API gateway — proxy daemon, agent setup, Claude Code integration"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr/releases/download/v0.1.0/rtr-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "d0182ea04222a4981b4844e6b5f733cba795780fc975a70368e019af67787a01"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr/releases/download/v0.1.0/rtr-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "b78be2163bc404efb0c6c9583af9ce5cb7187a97ae42e3e4f8f3b1a7474b0ea8"
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
