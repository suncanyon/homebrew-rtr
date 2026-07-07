class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.15"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.15/rtr-0.1.15-x86_64-apple-darwin.tar.gz"
      sha256 "ba8cf862f35726ee21531ea4c1fcd25ab18fa4c71431053aa7bf4d6db59f4f57"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.15/rtr-0.1.15-aarch64-apple-darwin.tar.gz"
      sha256 "3660e50d083ce588d75c12750ad840dd76c2ed6b30fad367b915da6eae90ab09"
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
