class EvmCloud < Formula
  desc "CLI for deploying EVM blockchain data infrastructure"
  homepage "https://github.com/ExoMonk/evm-cloud"
  version "0.0.1-alpha7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha7/evm-cloud_0.0.1-alpha7_darwin_arm64.tar.gz"
      sha256 "552a32a6e01dc52239b9ea9d30a7e267a83095578ebbde5560ede2850bee0d74"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha7/evm-cloud_0.0.1-alpha7_darwin_amd64.tar.gz"
      sha256 "dcbd6e012ef2816cb72053c13d34df0d9294a123035a22faea61d42e64d2b467"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha7/evm-cloud_0.0.1-alpha7_linux_arm64.tar.gz"
      sha256 "55b105311c2de86d0d7bc0f069d6275d5c049781a83eb496e520524e303212fb"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha7/evm-cloud_0.0.1-alpha7_linux_amd64.tar.gz"
      sha256 "03abe3a9ce3598abe62a8f3a4576a5e9bfd4193b3707a1ffe87fc47ba8009fbe"
    end
  end

  def install
    bin.install "evm-cloud"
  end

  test do
    assert_match "Deploy EVM blockchain data infrastructure on AWS", shell_output("#{bin}/evm-cloud --help")
  end
end
