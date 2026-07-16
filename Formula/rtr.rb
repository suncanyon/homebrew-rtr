class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.55"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.55/rtr-0.1.55-x86_64-apple-darwin.tar.gz"
      sha256 "8c672e71864263809675191e2de19056d43d7e783b0d7434e600518ebd2c1f9f"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.55/rtr-0.1.55-aarch64-apple-darwin.tar.gz"
      sha256 "8a3be041596de37ee6f0d70b01af28784d779c1e904a40beca500e8804725370"
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
