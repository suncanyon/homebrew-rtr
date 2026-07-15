class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.49"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.49/rtr-0.1.49-x86_64-apple-darwin.tar.gz"
      sha256 "dc5f2b9367382c5f6023c189354fba8f4c1e559bf162d60f6a12df15b563bfc5"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.49/rtr-0.1.49-aarch64-apple-darwin.tar.gz"
      sha256 "2e1735db29e72730c5af7ba6474e355deedf39327b6d5766c156b8fb6918058d"
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
