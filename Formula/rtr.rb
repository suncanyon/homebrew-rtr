class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.7"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.7/rtr-0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "77acf95db214e163e54ef7319f052c31eb251420e371698376bd9464a1b7ac20"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.7/rtr-0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "14ee3b66eb08298f2385e112deb506548b6dae084f16cf21473dca70e6e5e310"
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
