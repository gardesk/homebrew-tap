class Ers < Formula
  desc "Window border renderer for macOS"
  homepage "https://github.com/gardesk/ers"
  url "https://github.com/gardesk/ers/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "91ba3ad20ea540200acd971db3c75f1e21a29fd37ec0981a4e610ebe24409d83"
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
