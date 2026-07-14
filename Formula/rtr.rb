class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.48"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.48/rtr-0.1.48-x86_64-apple-darwin.tar.gz"
      sha256 "55eec618de6fb51df543148f99f85e6edaa03af9b8cad49f8d5af20837622012"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.48/rtr-0.1.48-aarch64-apple-darwin.tar.gz"
      sha256 "f5297414451459dd5b7071a592c7aa20d3d54c2f331e51a8553090739cc6beaf"
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
