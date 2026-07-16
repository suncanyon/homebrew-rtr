class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.54"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.54/rtr-0.1.54-x86_64-apple-darwin.tar.gz"
      sha256 "a997d3d27b04f0312687e9db812345a6afc5d5bb1ac2d877e1cac76bce697bc6"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.54/rtr-0.1.54-aarch64-apple-darwin.tar.gz"
      sha256 "861a54144bd61597e083f870a4202e08d880dad18fc03290f0ec72afa923ee97"
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
