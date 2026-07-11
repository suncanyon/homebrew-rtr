class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.33"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.33/rtr-0.1.33-x86_64-apple-darwin.tar.gz"
      sha256 "6c58341608303b371b01d90f765b407002b74fe2f3f715106bf316477dbea8d0"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.33/rtr-0.1.33-aarch64-apple-darwin.tar.gz"
      sha256 "6e79761607c63b004beacf2e7f6ba8f859c23aa23e779a4cbcd3b352072cc933"
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
