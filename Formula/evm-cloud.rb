class EvmCloud < Formula
  desc "CLI for deploying EVM blockchain data infrastructure"
  homepage "https://github.com/ExoMonk/evm-cloud"
  version "0.0.1-alpha8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha8/evm-cloud_0.0.1-alpha8_darwin_arm64.tar.gz"
      sha256 "2ae82ee6398dd9e3712b90660979ad438fe0b164c8ea369224e142795f61b8ae"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha8/evm-cloud_0.0.1-alpha8_darwin_amd64.tar.gz"
      sha256 "694b8aa8fd43e6aac76960e07cc7e4f67258905ee452977e426651a2ead0e33a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha8/evm-cloud_0.0.1-alpha8_linux_arm64.tar.gz"
      sha256 "1534de455e55e3261a17bcdee83b471ea7eddfcb66b30f2f279fd237ab7e4591"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha8/evm-cloud_0.0.1-alpha8_linux_amd64.tar.gz"
      sha256 "768ddc14e11c8435143262e9155f0439bdb0e75a38c6f0e79300b92131eeb418"
    end
  end

  def install
    bin.install "evm-cloud"
  end

  test do
    assert_match "Deploy EVM blockchain data infrastructure on AWS", shell_output("#{bin}/evm-cloud --help")
  end
end
