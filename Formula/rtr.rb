class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.28"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.28/rtr-0.1.28-x86_64-apple-darwin.tar.gz"
      sha256 "80490a800733a6611e11fa38a4364a570d153869394b2fe80c167e6cf0ca9f0f"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.28/rtr-0.1.28-aarch64-apple-darwin.tar.gz"
      sha256 "136405b6b6c27fe0773ee1a113828208e044065117d3ac07904128e1e4c99a5d"
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
