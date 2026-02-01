cask "ccb" do
  version "0.1.0"
  sha256 "39504f1ab3e1578d22cdb7e8104187b8d6e8241a1667030299c482d0fd81756a"

  url "https://github.com/misbahsy/cc-bridge/releases/download/v#{version}/CCB-#{version}-arm64.zip"
  name "CCB"
  desc "Menu bar app for cc-bridge - Claude Code messaging bridge"
  homepage "https://github.com/misbahsy/cc-bridge"

  depends_on macos: ">= :catalina"
  depends_on arch: :arm64

  app "CCB.app"

  zap trash: [
    "~/.ccb",
    "~/Library/Application Support/com.ccb.desktop",
    "~/Library/Preferences/com.ccb.desktop.plist",
  ]
end
