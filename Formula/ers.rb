class Ers < Formula
  desc "Window border renderer for macOS"
  homepage "https://github.com/gardesk/ers"
  url "https://github.com/gardesk/ers/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "13c22c0c76ff898cd69ebefa314cb08df74c0e5fdd3c0aa9f2436b28058e20d4"
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
