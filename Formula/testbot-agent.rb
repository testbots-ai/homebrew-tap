class TestbotAgent < Formula
  desc "Run Testbots.ai tests locally with Playwright"
  homepage "https://testbots.ai"
  version "0.1.6"

  on_macos do
    on_arm do
      url "https://github.com/testbots-ai/testbot-agent-releases/releases/download/v0.1.6/testbot-agent-darwin-arm64.tar.gz"
      sha256 "4dc6034e1d17454ef35026122731eee4ec8b5a02f174a28f338232b8348e3885"
    end
    on_intel do
      url "https://github.com/testbots-ai/testbot-agent-releases/releases/download/v0.1.6/testbot-agent-darwin-x64.tar.gz"
      sha256 "e42b01e96b34a3104068e44fd61058c7af3ebe5bb05828a05e8aa8cf86108085"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/testbots-ai/testbot-agent-releases/releases/download/v0.1.6/testbot-agent-linux-arm64.tar.gz"
      sha256 "9fdaf2584c68719b082454e7dadd0c978e3f5c42cbd01874e347f7645e920b56"
    end
    on_intel do
      url "https://github.com/testbots-ai/testbot-agent-releases/releases/download/v0.1.6/testbot-agent-linux-x64.tar.gz"
      sha256 "bfba3b24711e0adc09fc1369c9733d47da1a74c574e0a1e20d2d403973e4ff95"
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
