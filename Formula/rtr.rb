class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.10"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.10/rtr-0.1.10-x86_64-apple-darwin.tar.gz"
      sha256 "bdedcfc14edc870a269079517da49e33898a3f00b1eee367b040ac3db964dcea"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.10/rtr-0.1.10-aarch64-apple-darwin.tar.gz"
      sha256 "0669ffe2f1a5d8da017be204685ce7d2bd0a020fe2c43e1a2664ef6d750c2861"
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
