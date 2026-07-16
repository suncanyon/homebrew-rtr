class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.62"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.62/rtr-0.1.62-x86_64-apple-darwin.tar.gz"
      sha256 "a34f9161bf995312ed71e64f2e9c0c4203ebdb83b9db9cd259b1b06bdd5c2e3e"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.62/rtr-0.1.62-aarch64-apple-darwin.tar.gz"
      sha256 "5e6994eac5e939b8efe23ddc2c64d69d7a2f9ade23eaff3819540beef790fd07"
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
