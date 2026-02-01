class CcBridge < Formula
  desc "Bridge messaging platforms (Telegram, Discord) to Claude Code"
  homepage "https://github.com/misbahsy/cc-bridge"
  url "https://registry.npmjs.org/cc-bridge/-/cc-bridge-0.1.2.tgz"
  sha256 "6efddca7912f2bb8cc806b14ad43436f4e564eaf72cde919cda661670b7d9360"
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
