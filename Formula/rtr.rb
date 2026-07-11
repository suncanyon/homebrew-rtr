class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.31"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.31/rtr-0.1.31-x86_64-apple-darwin.tar.gz"
      sha256 "7d5c9e1ac4a12de6107d72f96b3a012476b646ff85a9d60978ac66d777ebd2c0"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.31/rtr-0.1.31-aarch64-apple-darwin.tar.gz"
      sha256 "7fa61fd3d3b39b8797e708ec1914a815721406dae08477aad55a1c751ee4638e"
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
