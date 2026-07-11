class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.37"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.37/rtr-0.1.37-x86_64-apple-darwin.tar.gz"
      sha256 "c3435f1cb061e42057c0f28a7bf804da396fe251d831fc94f85d8cb9d531426a"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.37/rtr-0.1.37-aarch64-apple-darwin.tar.gz"
      sha256 "09f3e69273ce8de45623bae9f9e981a98b4ee684220918c464b9e911d5b62a65"
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
