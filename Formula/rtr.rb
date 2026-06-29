class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.8"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.8/rtr-0.1.8-x86_64-apple-darwin.tar.gz"
      sha256 "8e06ea8d911b3cab9cfe41640665f66b3007347d72dee42e908883296821be41"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.8/rtr-0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "d4b43487ea2960599d2334cbf3a4c9ac5261e8251ddc54ec52499e5f1c534b64"
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
