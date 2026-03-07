class EvmCloud < Formula
  desc "CLI for deploying EVM blockchain data infrastructure"
  homepage "https://github.com/ExoMonk/evm-cloud"
  version "0.0.1-alpha7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha7/evm-cloud_0.0.1-alpha7_darwin_arm64.tar.gz"
      sha256 "a66f7cd97e48ff521b7b7f4e7cc3f3c509540ccd1d9dcb5467f0a07b0b79f647"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha7/evm-cloud_0.0.1-alpha7_darwin_amd64.tar.gz"
      sha256 "3fbf2b0bad51140210f577d185734347e0e0e9ea482ae2a8c1b3deaf01dd7d50"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha7/evm-cloud_0.0.1-alpha7_linux_arm64.tar.gz"
      sha256 "e13398a5cb0105f0a431b1bb2cda8e9e6b8d1ee7cfce66b7c1b3a98d38c0ed9d"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha7/evm-cloud_0.0.1-alpha7_linux_amd64.tar.gz"
      sha256 "01f5aaae78d5bb16a4fd16834123e25cf5ac62bfa7a819d40997c6d851109de5"
    end
  end

  def install
    bin.install "evm-cloud"
  end

  test do
    assert_match "Deploy EVM blockchain data infrastructure on AWS", shell_output("#{bin}/evm-cloud --help")
  end
end
