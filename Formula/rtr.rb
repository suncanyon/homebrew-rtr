class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.50"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.50/rtr-0.1.50-x86_64-apple-darwin.tar.gz"
      sha256 "8b288f51b44a4a66d054fc9c8801d3e6857f0ceab254f02911435e6b190e6046"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.50/rtr-0.1.50-aarch64-apple-darwin.tar.gz"
      sha256 "7311fadf53f8f889816b9dee83560bd01ad4fad4c34324f1f4f117931d129b10"
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
