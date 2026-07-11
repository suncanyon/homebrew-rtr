class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.40"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.40/rtr-0.1.40-x86_64-apple-darwin.tar.gz"
      sha256 "9a087bcbf625239eb69e6b5f9e59f018b76dd15071ec37feb8cdf8831d2d6c87"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.40/rtr-0.1.40-aarch64-apple-darwin.tar.gz"
      sha256 "51bcf35c2f796c9774105df43a98d71e64f9fe3bcd64b699d7cf770ad066be1f"
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
