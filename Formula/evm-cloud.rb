class EvmCloud < Formula
  desc "CLI for deploying EVM blockchain data infrastructure"
  homepage "https://github.com/ExoMonk/evm-cloud"
  version "0.0.1-alpha8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha8/evm-cloud_0.0.1-alpha8_darwin_arm64.tar.gz"
      sha256 "590138c316295d03c823a44ff7c56194ce0e545c7cac32f7fcd383de277cd493"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha8/evm-cloud_0.0.1-alpha8_darwin_amd64.tar.gz"
      sha256 "8e964318a5a07316d4f560703179772ef5bc1e8491ce75d3032edc0423fdb1be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha8/evm-cloud_0.0.1-alpha8_linux_arm64.tar.gz"
      sha256 "f0ed1ff2caaee809504eb5d76f7ef36486d6613ac52bad12ba1b97438a3d0c58"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha8/evm-cloud_0.0.1-alpha8_linux_amd64.tar.gz"
      sha256 "48175fcb2e4090a632f79c12f1824540c5325aa7a75c367b02572215ba6121ad"
    end
  end

  def install
    bin.install "evm-cloud"
  end

  test do
    assert_match "Deploy EVM blockchain data infrastructure on AWS", shell_output("#{bin}/evm-cloud --help")
  end
end
