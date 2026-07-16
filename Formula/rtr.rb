class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.64"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.64/rtr-0.1.64-x86_64-apple-darwin.tar.gz"
      sha256 "e73a855ed60939e6fc0ed761a4f9e334ee4a94a7ee1e804445906c62bfbc9d14"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.64/rtr-0.1.64-aarch64-apple-darwin.tar.gz"
      sha256 "f142f27349a5a7bfbdd013bd0815a28e7072893566af815d8c1c702c8eea2787"
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
