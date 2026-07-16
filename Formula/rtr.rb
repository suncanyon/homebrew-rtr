class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.61"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.61/rtr-0.1.61-x86_64-apple-darwin.tar.gz"
      sha256 "4c988bd415ae155b2595f05e5e516fb252fb795da3a041433c3d89ad229111fa"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.61/rtr-0.1.61-aarch64-apple-darwin.tar.gz"
      sha256 "8e98e67936d92390c0c33d6d62a2e8faa7e06e274111d05d0f61e0ffeb5db4bc"
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
