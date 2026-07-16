class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.56"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.56/rtr-0.1.56-x86_64-apple-darwin.tar.gz"
      sha256 "818f10b1cb26eba26efbfa91144dcfe22ff1f0db82084897ecb189cd1b48fd50"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.56/rtr-0.1.56-aarch64-apple-darwin.tar.gz"
      sha256 "368ddc5123046a7733748e96e91c34ab6376efbf6e4afec77a75cad564ae36c7"
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
