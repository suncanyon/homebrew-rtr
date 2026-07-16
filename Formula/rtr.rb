class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.63"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.63/rtr-0.1.63-x86_64-apple-darwin.tar.gz"
      sha256 "2c18374c59efeaedf6ba52d28974f9c2915ab104955fdf616e8442cd1d0d6fbe"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.63/rtr-0.1.63-aarch64-apple-darwin.tar.gz"
      sha256 "2d79ef960f52ce3280e5a20eaef344ca11ca61dd50f3a75523aaf8c2eab71c22"
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
