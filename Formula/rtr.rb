class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.5"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.5/rtr-0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "4bbaf0f5cdb6c4aef9e830e62ae33f940e52541bceccf76c07c32b7880e32716"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.5/rtr-0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "93c1ceb02d696ea8cbd81b1a2cfea8809a010f42c8855793d2704fde355ba288"
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
