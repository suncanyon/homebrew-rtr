class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.24"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.24/rtr-0.1.24-x86_64-apple-darwin.tar.gz"
      sha256 "e9dd2531cadfda4149b5cc6bf19980fca470bcfe88a1525745a38cff4ce8a9e1"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.24/rtr-0.1.24-aarch64-apple-darwin.tar.gz"
      sha256 "572a6884bd8015e4f9ea04809b27f4f3e658fae8bfd4695a2306a48cdfac16a4"
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
