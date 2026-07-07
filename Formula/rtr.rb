class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.14"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/cli-v0.1.14/rtr-0.1.14-x86_64-apple-darwin.tar.gz"
      sha256 "83dd7150da958825896b6a5733abafe8ebb720b8ffabef2ae8a366d0fecded76"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/cli-v0.1.14/rtr-0.1.14-aarch64-apple-darwin.tar.gz"
      sha256 "0943f858b582ac83ce0df0e5242deb2382779d695b9904ab20d5d81c023a6eff"
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
