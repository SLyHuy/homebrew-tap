# frozen_string_literal: true

cask "skey" do
  version "0.2.1"
  sha256 "62a667e9790d11f566e496517ae0315b7db1e0657ed20fc4b4c325579dd6ea1a"

  url "https://github.com/SLyHuy/SKey/releases/download/v#{version}/SKey-#{version}.dmg"
  name "SKey"
  desc "Minimal Vietnamese Telex input method for macOS, tuned for developers"
  homepage "https://github.com/SLyHuy/SKey"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "SKey.app"

  uninstall quit: "com.huyly.skey"

  zap trash: [
    "~/Library/Preferences/com.huyly.skey.plist",
  ]

  caveats <<~EOS
    SKey is free and ad-hoc signed (not notarized by Apple).
    On first launch, macOS Gatekeeper will block it. Either:
      1. Open System Settings -> Privacy & Security and click "Open Anyway", or
      2. Run: xattr -dr com.apple.quarantine /Applications/SKey.app

    SKey requires Accessibility permission (System Settings -> Privacy & Security
    -> Accessibility). Because each ad-hoc build has a new signature, click
    "Làm mới quyền" in SKey's setup window and re-enable SKey after upgrading.
  EOS
end
