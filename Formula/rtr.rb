class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.19"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.19/rtr-0.1.19-x86_64-apple-darwin.tar.gz"
      sha256 "f32e0a8db0d2bc237f650335e0f9b66968cc414a496568f0d5b891a7054dfde1"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.19/rtr-0.1.19-aarch64-apple-darwin.tar.gz"
      sha256 "685f02b0e417638a817e480d5975c9930b38862141ce5baac56e712bf2caa1ea"
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
