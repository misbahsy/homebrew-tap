class CcBridge < Formula
  desc "Bridge messaging platforms (Telegram, Discord) to Claude Code"
  homepage "https://github.com/misbahsy/cc-bridge"
  url "https://registry.npmjs.org/cc-bridge/-/cc-bridge-0.1.1.tgz"
  sha256 "66f1a0dabb7a2d0c666dd17948055b284fafbea231800e6ed4d090df061e99f6"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/ccb"
  end

  test do
    assert_match "cc-bridge", shell_output("#{bin}/ccb --version")
  end
end
