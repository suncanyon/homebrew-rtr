class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.20"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.20/rtr-0.1.20-x86_64-apple-darwin.tar.gz"
      sha256 "346a2df411d7fc3150c0026f0a7f17315b00dcf64f2b3629dcfa7a1cb5b3325f"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.20/rtr-0.1.20-aarch64-apple-darwin.tar.gz"
      sha256 "6f30bdb7a2a7942d0d8b9b44c8587cdcee8836300eab4f5cc0ec845353e8c1ab"
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
