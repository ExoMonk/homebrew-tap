class EvmCloud < Formula
  desc "CLI for deploying EVM blockchain data infrastructure"
  homepage "https://github.com/ExoMonk/evm-cloud"
  version "0.0.1-alpha8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha8/evm-cloud_0.0.1-alpha8_darwin_arm64.tar.gz"
      sha256 "c8374a95f82a2dc1f2a94fe8b31be6d2e77510de54a1a0a6cc308df51e1de020"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha8/evm-cloud_0.0.1-alpha8_darwin_amd64.tar.gz"
      sha256 "06125adb79c7169736c19eb7fd30173565a86f1a4d40f0f9a38d73821f56d35e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha8/evm-cloud_0.0.1-alpha8_linux_arm64.tar.gz"
      sha256 "aadba32aab72b76b6877041ff35e91032a58e6855890a96aed3012d1cc0e02a3"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha8/evm-cloud_0.0.1-alpha8_linux_amd64.tar.gz"
      sha256 "e1bc293ebbd6ee3db30284ad9d93f54c540e2e3c6a2f0b2e41bb58032f5a7196"
    end
  end

  def install
    bin.install "evm-cloud"
  end

  test do
    assert_match "Deploy EVM blockchain data infrastructure on AWS", shell_output("#{bin}/evm-cloud --help")
  end
end
