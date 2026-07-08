class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.23"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.23/rtr-0.1.23-x86_64-apple-darwin.tar.gz"
      sha256 "e6353c41f3a7c4e3767b5530ea9c718de51d8da11af1433ea818558c915a05b4"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.23/rtr-0.1.23-aarch64-apple-darwin.tar.gz"
      sha256 "ae329143ff95bea7205570abed5f4bc1c0784d042d05fb49dba7b1d18f8a3ccd"
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
