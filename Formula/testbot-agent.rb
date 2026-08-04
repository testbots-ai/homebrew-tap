class TestbotAgent < Formula
  desc "Run Testbots.ai tests locally with Playwright"
  homepage "https://testbots.ai"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/testbots-ai/testbot-agent-releases/releases/download/v0.1.5/testbot-agent-darwin-arm64.tar.gz"
      sha256 "165252db003f34c02a9cd01b662f255b368c6a81187090a00e66e7d0aa8cd112"
    end
    on_intel do
      url "https://github.com/testbots-ai/testbot-agent-releases/releases/download/v0.1.5/testbot-agent-darwin-x64.tar.gz"
      sha256 "966871785f110777818b78a8bf3afed37720e2fa347cd3f78d04c0c1bd02cea8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/testbots-ai/testbot-agent-releases/releases/download/v0.1.5/testbot-agent-linux-arm64.tar.gz"
      sha256 "4da5a9f35c0f6bd63a25feb514cbbf1c621edbef41d9ff7f69530634ebee7c1e"
    end
    on_intel do
      url "https://github.com/testbots-ai/testbot-agent-releases/releases/download/v0.1.5/testbot-agent-linux-x64.tar.gz"
      sha256 "366c5e0d4aa0741ada642397ac42cd08c5d289d318078cce6e36e003f0217f60"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/testbot-agent"
  end

  test do
    system "#{bin}/testbot-agent"
  end
end
