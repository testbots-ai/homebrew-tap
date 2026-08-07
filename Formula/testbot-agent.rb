class TestbotAgent < Formula
  desc "Run Testbots.ai tests locally with Playwright"
  homepage "https://testbots.ai"
  url "https://registry.npmjs.org/testbot-agent/-/testbot-agent-0.3.0.tgz"
  sha256 "2720ee0acb2bd09d58eeac21f907d4425fcc57a32f3d55bb48557c475fdfc881"
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
