class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.2"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.2/rtr-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "9ada3b4da9f6e28aedf10b8632e550ed11fbf7478f849ae3a2a641899873ca9c"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.2/rtr-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "d5c6311433864989b33b3d990deb6ee8ba4b5e3db903b7c8c32b7084bd808e0a"
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
