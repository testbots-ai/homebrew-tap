class TestbotAgent < Formula
  desc "Run Testbots.ai tests locally with Playwright"
  homepage "https://testbots.ai"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/testbots-ai/testbot-agent-releases/releases/download/v0.1.2/testbot-agent-darwin-arm64.tar.gz"
      sha256 "ff7b9347aae33999b478dcb764b056507a4e0b8892ae5b5925214611e75effb4"
    end
    on_intel do
      url "https://github.com/testbots-ai/testbot-agent-releases/releases/download/v0.1.2/testbot-agent-darwin-x64.tar.gz"
      sha256 "b3db5a2ef160e5a603ad5c86f3ed3128469d11f236594dea5bbccdf63c2fe9b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/testbots-ai/testbot-agent-releases/releases/download/v0.1.2/testbot-agent-linux-arm64.tar.gz"
      sha256 "ed620ac9cf66628c3446f9f495c9ccc5efc0e967c662c1179c3358914f43b751"
    end
    on_intel do
      url "https://github.com/testbots-ai/testbot-agent-releases/releases/download/v0.1.2/testbot-agent-linux-x64.tar.gz"
      sha256 "9280993ca13bef3901de9d8f09b5e4e2fab6260a9bb791fa6efdb44ee406145c"
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
