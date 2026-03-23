class Tarmac < Formula
  desc "Tiling window manager for macOS, configured with Lua"
  homepage "https://github.com/gardesk/tarmac"
  url "https://github.com/gardesk/tarmac/releases/download/v0.1.2/tarmac-v0.1.2-darwin-arm64.tar.gz"
  sha256 "d4a34b39b90e3520629cec276276428fd6934a3a06a88cb769419e99f5a629d8"
  version "0.1.2"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "tarmac"
    bin.install "tarmacctl"
    bin.install "ers"
  end

  def caveats
    <<~EOS
      tarmac requires Accessibility permission to manage windows.
      Grant access in: System Settings → Privacy & Security → Accessibility

      Configuration: ~/.config/tarmac/init.lua (created on first run)

      Start tarmac:
        tarmac

      Control a running instance:
        tarmacctl get-workspaces
        tarmacctl focus left
    EOS
  end

  test do
    assert_match "tarmacctl", shell_output("#{bin}/tarmacctl 2>&1", 1)
  end
end
