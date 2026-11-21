class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.67"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.67/rtr-0.1.67-x86_64-apple-darwin.tar.gz"
      sha256 "9e1b7d5e5539a17314b981b9406f72fd3bf1cc646d81a99145757fccedf7e58e"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.67/rtr-0.1.67-aarch64-apple-darwin.tar.gz"
      sha256 "45e94663d83e854e854dac3d96feba1d1c5d10c832940a879d841c8d8d76c96c"
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
