class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.47"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.47/rtr-0.1.47-x86_64-apple-darwin.tar.gz"
      sha256 "0d8ba08656975da377e65623aea8cf14f53e10e26ef987716da9361218720ae4"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.47/rtr-0.1.47-aarch64-apple-darwin.tar.gz"
      sha256 "4fb4178e30302faa70ced916fef0ffc34d2f1809d06b84dbb11121cd8807c326"
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
