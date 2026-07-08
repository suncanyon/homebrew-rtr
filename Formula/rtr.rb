class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.21"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.21/rtr-0.1.21-x86_64-apple-darwin.tar.gz"
      sha256 "f2fd8890b82f4c9a5c90d3c1780ed53696f639bbeb607941103278bd0b27e986"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.21/rtr-0.1.21-aarch64-apple-darwin.tar.gz"
      sha256 "da0d25d172fa9166561a1663e8ed83cb7202d38898ecca384691d66888f111ac"
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
