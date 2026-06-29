class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.9"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.9/rtr-0.1.9-x86_64-apple-darwin.tar.gz"
      sha256 "2df2fffeb4570e3eeff2c94cea4096b9ae2e33c44712f1d7802038f97105593b"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.9/rtr-0.1.9-aarch64-apple-darwin.tar.gz"
      sha256 "df21ec9d8de0cd99cfd73501d039b006797a40e9ddcf286773131f5bb3861183"
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
