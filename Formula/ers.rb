class Ers < Formula
  desc "Window border renderer for macOS"
  homepage "https://github.com/gardesk/ers"
  url "https://github.com/gardesk/ers/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "1b6fd80a658d231b07e0c90bd196099b9a5f25a41a080f97338347567fce987e"
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
