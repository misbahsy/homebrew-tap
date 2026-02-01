cask "ccb" do
  version "0.1.0"
  sha256 "eed4828e6a4f1dbafc01ce4ab58231065bff969339bb0e6c7a513b90ee6b1e36"

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
