class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.58"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.58/rtr-0.1.58-x86_64-apple-darwin.tar.gz"
      sha256 "507c959125c532cd24608655525e120ef7b91b58f579c2f95b4681d14d711a35"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.58/rtr-0.1.58-aarch64-apple-darwin.tar.gz"
      sha256 "2146e726145b778e6662e1630039bf74e892cb333ec36dfc7033f3bc9e05c238"
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
