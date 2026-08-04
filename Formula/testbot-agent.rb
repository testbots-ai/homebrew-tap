class TestbotAgent < Formula
  desc "Run Testbots.ai tests locally with Playwright"
  homepage "https://testbots.ai"
  url "https://registry.npmjs.org/testbot-agent/-/testbot-agent-0.1.7.tgz"
  sha256 "9789cf0b5ba91ec1cc04c3c5717daaa73fdf1fc27f39da86d58cb992ac43cabf"
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
