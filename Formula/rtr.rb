class Rtr < Formula
  desc "Universal CLI for the RTR API gateway — proxy daemon, agent setup, Claude Code integration"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr/releases/download/v0.1.0/rtr-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "8f6423d09f4ffb936620189cbc83dfd67cdcbbd823e541ed678ebf2501d3dbbb"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr/releases/download/v0.1.0/rtr-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "bfeefa37b93441a4674d2230b8cfeebf9e7d2f625996449757142d772a04d620"
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
