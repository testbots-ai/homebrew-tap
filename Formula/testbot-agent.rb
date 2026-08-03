class TestbotAgent < Formula
  desc "Run Testbots.ai tests locally with Playwright"
  homepage "https://testbots.ai"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/testbots-ai/testbot-agent-releases/releases/download/v0.1.3/testbot-agent-darwin-arm64.tar.gz"
      sha256 "7f1078b027431d64b4178bb71ea41aba62a69ee4327b983c73caba8da4c891a4"
    end
    on_intel do
      url "https://github.com/testbots-ai/testbot-agent-releases/releases/download/v0.1.3/testbot-agent-darwin-x64.tar.gz"
      sha256 "e0c0907e26eaa971b672515bc317b7c97ce6611dd2535bdb228957c5cf015808"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/testbots-ai/testbot-agent-releases/releases/download/v0.1.3/testbot-agent-linux-arm64.tar.gz"
      sha256 "45e7018272ce1e9db8cdb7983a0dfbb921bc0a790663361365633ee7a198610c"
    end
    on_intel do
      url "https://github.com/testbots-ai/testbot-agent-releases/releases/download/v0.1.3/testbot-agent-linux-x64.tar.gz"
      sha256 "ac6e2c2a29c9693460f35bb3e144da5c18c2e35187e89357f2462e2991c12fd1"
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
