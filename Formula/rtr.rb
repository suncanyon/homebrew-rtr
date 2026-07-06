class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.12"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.12/rtr-0.1.12-x86_64-apple-darwin.tar.gz"
      sha256 "1422195a29aecffb3b0e21bb52dbcb3a167de9094c553b00fa13d86f276e0227"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.12/rtr-0.1.12-aarch64-apple-darwin.tar.gz"
      sha256 "2718c87830722399264b042fb7a0b20c950664300f334c6710bd32a439b96113"
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
