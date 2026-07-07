class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.15"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/cli-v0.1.15/rtr-0.1.15-x86_64-apple-darwin.tar.gz"
      sha256 "1c136d0572d2764f41701492013837f33de1364db4572ada70013de14bbc3194"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/cli-v0.1.15/rtr-0.1.15-aarch64-apple-darwin.tar.gz"
      sha256 "aeb314f9df41037ae19d0045bdbb5926de701d66a36216bfa58068f2a9a211b2"
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
