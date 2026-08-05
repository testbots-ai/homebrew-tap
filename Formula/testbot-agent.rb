class TestbotAgent < Formula
  desc "Run Testbots.ai tests locally with Playwright"
  homepage "https://testbots.ai"
  url "https://registry.npmjs.org/testbot-agent/-/testbot-agent-0.1.8.tgz"
  sha256 "2e8ac5b662b1c53a71f0de72a5c384492b4170db16a085c15c5b4ad00880c2c3"
  license :cannot_represent

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    system bin/"testbot-agent"
  end
end
