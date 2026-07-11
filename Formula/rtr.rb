class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.35"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.35/rtr-0.1.35-x86_64-apple-darwin.tar.gz"
      sha256 "3487ba8913cab63636c9d0ea1892cc926f675c6829e9ba6b1aba35fbde0945ab"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.35/rtr-0.1.35-aarch64-apple-darwin.tar.gz"
      sha256 "94c0489a24086ec57f03e6d34945a577bc19b97d157380a593689dd7224ccc9e"
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
