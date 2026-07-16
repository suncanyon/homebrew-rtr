class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.57"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.57/rtr-0.1.57-x86_64-apple-darwin.tar.gz"
      sha256 "97d160d3b59b16780b733f4a8c85cc25a4ca0765480a9c6a07eb91bcff68de03"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.57/rtr-0.1.57-aarch64-apple-darwin.tar.gz"
      sha256 "0abf6eed5ffcd6461b45cba737d4487ac7b4700b7ce651804307b24c78a70656"
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
