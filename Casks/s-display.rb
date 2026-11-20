# frozen_string_literal: true

cask "s-display" do
  version "0.1.1"
  sha256 "4ec9460d81ac9bababe6ac92bfca8d2ac36ec375f580b8b7c05e010344b4e9be"

  url "https://github.com/SLyHuy/S-Display/releases/download/v#{version}/S-Display-#{version}.dmg"
  name "S-Display"
  desc "Menu bar app for display BlackOut, brightness sync, and sharp HiDPI scaling"
  homepage "https://github.com/SLyHuy/S-Display"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "S-Display.app"

  uninstall quit: "com.huyly.sdisplay"

  zap trash: [
    "~/Library/Application Support/S-Display",
    "~/Library/Preferences/com.huyly.sdisplay.plist",
  ]

  caveats <<~EOS
    S-Display is free and ad-hoc signed (not notarized by Apple).
    On first launch, macOS Gatekeeper will block it. Either:
      1. Open System Settings -> Privacy & Security and click "Open Anyway", or
      2. Run: xattr -dr com.apple.quarantine /Applications/S-Display.app

    Before upgrading or uninstalling while a display is turned off, choose
    "Turn All On & Quit" in S-Display (or press Control-Option-Command-0).
  EOS
end
