class CcBridge < Formula
  desc "Bridge messaging platforms (Telegram, Discord) to Claude Code"
  homepage "https://github.com/misbahsy/cc-bridge"
  url "https://registry.npmjs.org/cc-bridge/-/cc-bridge-0.1.3.tgz"
  sha256 "571295a161444e9479fa50356eaf72c48c223a610cef205ff15be92da1384e8e"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    # Rebuild native modules (better-sqlite3) since std_npm_args uses --ignore-scripts
    cd libexec/"lib/node_modules/cc-bridge" do
      system "npm", "rebuild", "better-sqlite3"
    end
    bin.install_symlink libexec/"bin/ccb"
  end

  test do
    assert_match "cc-bridge", shell_output("#{bin}/ccb --version")
  end
end
