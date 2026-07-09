class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.27"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.27/rtr-0.1.27-x86_64-apple-darwin.tar.gz"
      sha256 "c7eaa73385995b0c7ba6fe7f75dbfabad8229165a7c9c1e791dd4fbb892fc20c"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.27/rtr-0.1.27-aarch64-apple-darwin.tar.gz"
      sha256 "4ea397a13a6c466c449c4f37ce1b6c6ad3fee3555b9b7fa15745904b22ffcbf8"
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
