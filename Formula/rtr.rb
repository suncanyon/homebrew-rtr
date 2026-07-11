class Rtr < Formula
  desc "Universal CLI for the RTR API gateway"
  homepage "https://github.com/suncanyon/rtr"
  license "MIT"
  version "0.1.45"

  on_macos do
    on_intel do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.45/rtr-0.1.45-x86_64-apple-darwin.tar.gz"
      sha256 "3185e4cd84940dd3e72a48cb68fb86b507458c11bff942497275c0908c6055e3"
    end
    on_arm do
      url "https://github.com/suncanyon/rtr-releases/releases/download/v0.1.45/rtr-0.1.45-aarch64-apple-darwin.tar.gz"
      sha256 "945cc26924739e859359f805857ce0499791d1b0f4453b625fcaa9332e87709f"
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
