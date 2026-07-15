class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.51"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.51/rtr-0.1.51-x86_64-apple-darwin.tar.gz"
      sha256 "78cf169f5eaf1960721587e12f8e031c190830e88c3cbdc1ee2f1d2c82f64c39"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.51/rtr-0.1.51-aarch64-apple-darwin.tar.gz"
      sha256 "d70ce0c0be0ab9867a3635adf9ac878016ed07ff35185e4a316f667964e10190"
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
