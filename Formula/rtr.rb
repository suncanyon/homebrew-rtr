class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.17"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.17/rtr-0.1.17-x86_64-apple-darwin.tar.gz"
      sha256 "0f5ce644cfd011755a6665d773a5d7b4a7bd101556da766a1343e0dc8e8009ff"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.17/rtr-0.1.17-aarch64-apple-darwin.tar.gz"
      sha256 "4dd5a6f0dfbd79a9e65f922012ae0bb763b0554264a7304a0a5e957313a04c0f"
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
