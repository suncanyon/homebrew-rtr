class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.13"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.13/rtr-0.1.13-x86_64-apple-darwin.tar.gz"
      sha256 "a41d8c77e153bf39f8b12eb2d6cbb0c3d5c13c1935e6b5f497b188c296576783"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.13/rtr-0.1.13-aarch64-apple-darwin.tar.gz"
      sha256 "4b5cc970204f48de9ee9e833025d532ee167afebb45b27606d9790420a3acd85"
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
