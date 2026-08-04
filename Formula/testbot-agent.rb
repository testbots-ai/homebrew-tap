class TestbotAgent < Formula
  desc "Run Testbots.ai tests locally with Playwright"
  homepage "https://testbots.ai"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/testbots-ai/testbot-agent-releases/releases/download/v0.1.4/testbot-agent-darwin-arm64.tar.gz"
      sha256 "170afa49a636520ed94c24b9260d05fd2a69b88969d88c0232e346f69a139181"
    end
    on_intel do
      url "https://github.com/testbots-ai/testbot-agent-releases/releases/download/v0.1.4/testbot-agent-darwin-x64.tar.gz"
      sha256 "a8ebda902bc57e82a968fec233273de4fa8feda17c354fce71782b66255f7950"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/testbots-ai/testbot-agent-releases/releases/download/v0.1.4/testbot-agent-linux-arm64.tar.gz"
      sha256 "0266e76696d531d494cf7cf166f58d660b368b92cd0f60a3634173b707fabe56"
    end
    on_intel do
      url "https://github.com/testbots-ai/testbot-agent-releases/releases/download/v0.1.4/testbot-agent-linux-x64.tar.gz"
      sha256 "30936635bb0b695bb92b1c153d3acd414aba243aec0b461de815c2fada2676eb"
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
