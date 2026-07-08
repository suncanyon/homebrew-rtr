class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.18"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.18/rtr-0.1.18-x86_64-apple-darwin.tar.gz"
      sha256 "875f32b86f86245c36bc0b3d20aeb9444d8e9612e3c10a0948a0569ddcd9d187"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.18/rtr-0.1.18-aarch64-apple-darwin.tar.gz"
      sha256 "9bf9c5c8f960f0f9ebacd285839d0411ad85a5cd783a00852eb43c161273afe5"
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
