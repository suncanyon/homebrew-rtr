class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.60"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.60/rtr-0.1.60-x86_64-apple-darwin.tar.gz"
      sha256 "fe2fdbf73c5b63ec8cf34dbedd3d64f47929be468fde837ce17b4bdad4c55804"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.60/rtr-0.1.60-aarch64-apple-darwin.tar.gz"
      sha256 "b1a51ef565e33ce7f0d3938420589ec466d052d0099e227256b0c7ab22547639"
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
