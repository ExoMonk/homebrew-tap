class EvmCloud < Formula
  desc "CLI for deploying EVM blockchain data infrastructure"
  homepage "https://github.com/ExoMonk/evm-cloud"
  version "0.0.1-alpha3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha3/evm-cloud_0.0.1-alpha3_darwin_arm64.tar.gz"
      sha256 "d6f61cfe65054b0c9e8eeced09c6be764cf07b369f2e0f00a475e5948feca8ae"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha3/evm-cloud_0.0.1-alpha3_darwin_amd64.tar.gz"
      sha256 "f98999fa24e253481a324688d5b2a14f1571f11c594e39796c09180986131be5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha3/evm-cloud_0.0.1-alpha3_linux_arm64.tar.gz"
      sha256 "64d4d1f7d13ebe128dcecf22ea0eab82c4949927c12acbc6379b3c715585f58c"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha3/evm-cloud_0.0.1-alpha3_linux_amd64.tar.gz"
      sha256 "3d1a10f396345819f21841535f65429c19ff65c3b0829a7a8b005606a54a08e3"
    end
  end

  def install
    bin.install "evm-cloud"
  end

  test do
    assert_match "Deploy EVM blockchain data infrastructure on AWS", shell_output("#{bin}/evm-cloud --help")
  end
end
