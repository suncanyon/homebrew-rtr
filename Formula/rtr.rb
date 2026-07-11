class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.38"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.38/rtr-0.1.38-x86_64-apple-darwin.tar.gz"
      sha256 "12feb2ed075796825ceff152926e7e4bb9757e48c3cfdf910fa85ea08269cf48"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.38/rtr-0.1.38-aarch64-apple-darwin.tar.gz"
      sha256 "dd354ca398432febf42ca874379282c0a3bfb5e47b98417ca76e5977f2984c68"
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
