class EvmCloud < Formula
  desc "CLI for deploying EVM blockchain data infrastructure"
  homepage "https://github.com/ExoMonk/evm-cloud"
  version "0.0.1-alpha8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha8/evm-cloud_0.0.1-alpha8_darwin_arm64.tar.gz"
      sha256 "4dd692734ef06b1fb410569276541dfc8d608c0f71c35263f8370641aaf1be14"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha8/evm-cloud_0.0.1-alpha8_darwin_amd64.tar.gz"
      sha256 "6a46ce217a1c19d2441aeb810e568dc81e4a7dac2d9a158ffab4c3386f4bcdae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha8/evm-cloud_0.0.1-alpha8_linux_arm64.tar.gz"
      sha256 "a40d3df065b567f2d288be85fb304453844bd4a61dee2cba388d3314e2747994"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha8/evm-cloud_0.0.1-alpha8_linux_amd64.tar.gz"
      sha256 "23087241c1af40985f508514c2fe1b2ed796714cb9d04d12f4605f358cbdf478"
    end
  end

  def install
    bin.install "evm-cloud"
  end

  test do
    assert_match "Deploy EVM blockchain data infrastructure on AWS", shell_output("#{bin}/evm-cloud --help")
  end
end
