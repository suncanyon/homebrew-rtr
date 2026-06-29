class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.3"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.3/rtr-0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "85c8643e4c2758464abfd446ec7a379a7f8210d195bb84ce3eb922905579669b"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.3/rtr-0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "2498252c2ca71f337c59438b7b1c1a328d9a954f138d86d4fd9358745d872cc0"
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
