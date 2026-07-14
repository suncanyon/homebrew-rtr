class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.46"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.46/rtr-0.1.46-x86_64-apple-darwin.tar.gz"
      sha256 "19cefdb00c1ac880856e6de5de8f3cfee6a61b80ac6626b95f4f01dfc08832c0"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.46/rtr-0.1.46-aarch64-apple-darwin.tar.gz"
      sha256 "9975e1d5d0ebe7073b9f7708b54a58d2293c69e8a54c16fb70e252fc6dc10c47"
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
