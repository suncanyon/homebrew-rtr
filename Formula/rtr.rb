class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.52"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.52/rtr-0.1.52-x86_64-apple-darwin.tar.gz"
      sha256 "d893d60e7eee20a4562dab919ac704259572c42dbc54ea89b9d98f907a0d8fcc"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.52/rtr-0.1.52-aarch64-apple-darwin.tar.gz"
      sha256 "3e1db3545616cff139bf780309070ef34ad270f47c3873aaf0a0c99f074f7510"
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
