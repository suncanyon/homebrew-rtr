class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.32"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.32/rtr-0.1.32-x86_64-apple-darwin.tar.gz"
      sha256 "a531a076d5c6dfa937a139bf94f218c0b3d976f2d447d620ea5431f6f752d815"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.32/rtr-0.1.32-aarch64-apple-darwin.tar.gz"
      sha256 "bb2d8c71d53edc4902d28e8e8a86a5dd75de46eb43fb56d7c3b8916a93cff76a"
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
