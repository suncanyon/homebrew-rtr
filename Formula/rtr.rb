class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.66"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.66/rtr-0.1.66-x86_64-apple-darwin.tar.gz"
      sha256 "b64641cc9c809bf3c648dba3a74cda0bae4e9095ee2db3fdfb380b52dfd2cc4a"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.66/rtr-0.1.66-aarch64-apple-darwin.tar.gz"
      sha256 "41a3fa154f42b983b7365c107517e3b3c5e4f71ccd77b83fbc3bb69bc39242c6"
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
