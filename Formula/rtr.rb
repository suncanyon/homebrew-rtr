class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.26"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.26/rtr-0.1.26-x86_64-apple-darwin.tar.gz"
      sha256 "4956a6369b18166604bbd4663a3c471be5bc0b3cac1a528be295aae5ff7815d7"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.26/rtr-0.1.26-aarch64-apple-darwin.tar.gz"
      sha256 "0b329305cbbc5b2371f4a944a61e563a19f39fffcd35c694ebaa16d6404d56df"
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
