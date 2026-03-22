class Ers < Formula
  desc "Window border renderer for macOS"
  homepage "https://github.com/gardesk/ers"
  url "https://github.com/gardesk/ers/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "650c02a90ea32ac3f18586848847b61e0a8a0f61a0f5e0b9aafbe6e79b85ddbe"
  license "MIT"

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "ers", shell_output("#{bin}/ers --help 2>&1")
  end
end
