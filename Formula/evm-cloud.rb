class EvmCloud < Formula
  desc "CLI for deploying EVM blockchain data infrastructure"
  homepage "https://github.com/ExoMonk/evm-cloud"
  version "0.0.1-alpha5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha5/evm-cloud_0.0.1-alpha5_darwin_arm64.tar.gz"
      sha256 "4596c1e24fd5d38f0980472180cf426ab36517d0af9604d1ae1baf76663a0326"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha5/evm-cloud_0.0.1-alpha5_darwin_amd64.tar.gz"
      sha256 "3bcd2f30690bfe75ab8282d6f6f5edd3dcec6dc5178595e689ba863ed3179f4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha5/evm-cloud_0.0.1-alpha5_linux_arm64.tar.gz"
      sha256 "87cdc921002e42f8681308f2da71186fa96bfa933629a088f0b7971421ab801d"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha5/evm-cloud_0.0.1-alpha5_linux_amd64.tar.gz"
      sha256 "94aba152a267a6cd6d17aa1866fffd49b2686ee4b667cb1242faab27fa9f6ec9"
    end
  end

  def install
    bin.install "evm-cloud"
  end

  test do
    assert_match "Deploy EVM blockchain data infrastructure on AWS", shell_output("#{bin}/evm-cloud --help")
  end
end
