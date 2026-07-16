class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.59"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.59/rtr-0.1.59-x86_64-apple-darwin.tar.gz"
      sha256 "c2a0a32cb51359556eae54de8bf5eafbe9c9144d700757565cfea04d9eea95ba"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.59/rtr-0.1.59-aarch64-apple-darwin.tar.gz"
      sha256 "ccaefb66eb314451f6c9d30eb16d85c2a4ea6c7a7de30fe8a76ab735ff7bb718"
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
