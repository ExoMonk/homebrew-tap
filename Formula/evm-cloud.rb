class EvmCloud < Formula
  desc "CLI for deploying EVM blockchain data infrastructure"
  homepage "https://github.com/ExoMonk/evm-cloud"
  version "0.0.1.alpha"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/v0.0.1.alpha/evm-cloud_v0.0.1.alpha_darwin_arm64.tar.gz"
      sha256 "d972aa6a34af2ef3077b2671c536fbffbaf93e926dfd98ec03e44c87c388380d"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/v0.0.1.alpha/evm-cloud_v0.0.1.alpha_darwin_amd64.tar.gz"
      sha256 "0ce4649390eef18133dff343cbdcd9f4ac9f68ace0268dc3444c63f91b45738e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/v0.0.1.alpha/evm-cloud_v0.0.1.alpha_linux_arm64.tar.gz"
      sha256 "e7d3f78200c8cda33edddc7a64ccdbca2631618fb0fb36516c0f10be04770940"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/v0.0.1.alpha/evm-cloud_v0.0.1.alpha_linux_amd64.tar.gz"
      sha256 "0bac803f9fd97082c51933daca0fc5d7c7bc9ecde04da534bd8ef02c66ba4f9c"
    end
  end

  def install
    bin.install "evm-cloud"
  end

  test do
    assert_match "Deploy EVM blockchain data infrastructure on AWS", shell_output("#{bin}/evm-cloud --help")
  end
end
