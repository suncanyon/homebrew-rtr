class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.29"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.29/rtr-0.1.29-x86_64-apple-darwin.tar.gz"
      sha256 "661e90a665b8b3568210400c064bca40c4c4d43dcc8df3bb5f47372fa0ee26d0"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.29/rtr-0.1.29-aarch64-apple-darwin.tar.gz"
      sha256 "a81b8d77d03cd1e73ad080a1888d5173216dd2c7112320d2c992d0396e356c79"
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
