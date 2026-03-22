class Ers < Formula
  desc "Window border renderer for macOS"
  homepage "https://github.com/gardesk/ers"
  url "https://github.com/gardesk/ers/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "7c086810c7d198f221d28d0a1438ff5b3750e99de0d560259046b1a168b891bc"
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
