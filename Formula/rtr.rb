class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.6"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.6/rtr-0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "e7fcba8601f1189e9c9bd7a6450817503d5186a46939760834602b1ecb038321"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.6/rtr-0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "7150675110564e0b820d924586f26b5240725dc2b25e8c6cb3c41675954d899f"
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
