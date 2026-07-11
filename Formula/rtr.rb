class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.39"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.39/rtr-0.1.39-x86_64-apple-darwin.tar.gz"
      sha256 "b19b40ca97c53fa0838b3ce208cbc7648c7c5b681c915442875f6895497fa0ef"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.39/rtr-0.1.39-aarch64-apple-darwin.tar.gz"
      sha256 "c613451480eadd241ccbc3aa5557a2faa6cdd25f7277a9abb5933220a3404094"
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
