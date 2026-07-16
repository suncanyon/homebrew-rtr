class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.53"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.53/rtr-0.1.53-x86_64-apple-darwin.tar.gz"
      sha256 "b862d6801f49375c6d34c1f062f6e78b9bf6fa9f15508030935d25c47e521d0c"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.53/rtr-0.1.53-aarch64-apple-darwin.tar.gz"
      sha256 "d9376b52c647f33f5ae463aa5c237fcdbbaf7d3151f3e2ca1eb0f1ec6020a3bc"
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
