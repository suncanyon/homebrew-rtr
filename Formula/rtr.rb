class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.30"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.30/rtr-0.1.30-x86_64-apple-darwin.tar.gz"
      sha256 "013ad400ef17315b7e5a1bac2c19ffc6dc4ffd83c863dc7c9ac19e762a537bf7"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.30/rtr-0.1.30-aarch64-apple-darwin.tar.gz"
      sha256 "aeba86b4f41389a215d0a186b95133539b0e7314db670c465283035b3db81fd8"
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
