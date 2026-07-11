class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.34"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.34/rtr-0.1.34-x86_64-apple-darwin.tar.gz"
      sha256 "5723a9b30fb240095d456bc0e8c51c99f994bde7dbce583198c773e81677663a"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.34/rtr-0.1.34-aarch64-apple-darwin.tar.gz"
      sha256 "b9756ece2c1b5414b172e92186450cec4d68a0fcaba19f3d48f618cd124ba337"
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
