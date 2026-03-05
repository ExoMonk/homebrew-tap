class EvmCloud < Formula
  desc "CLI for deploying EVM blockchain data infrastructure"
  homepage "https://github.com/ExoMonk/evm-cloud"
  version "0.0.1-alpha4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha4/evm-cloud_0.0.1-alpha4_darwin_arm64.tar.gz"
      sha256 "877f8c8af11f882bba1620762818dc3c71c4d9bfa8e27263b8291005711ee10c"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha4/evm-cloud_0.0.1-alpha4_darwin_amd64.tar.gz"
      sha256 "3d222ee2f50ce67a483a7c1d09de5ce127bda95518eff8d06b047d30bcf4e62f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha4/evm-cloud_0.0.1-alpha4_linux_arm64.tar.gz"
      sha256 "681847ead2dcf2913fd5cdca6c03ca93c49f96023caba553a5d8bfcef99647d8"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha4/evm-cloud_0.0.1-alpha4_linux_amd64.tar.gz"
      sha256 "412435046c607d33a8f1607f12a27643309ff76f9b4343cd94e367b20372aae6"
    end
  end

  def install
    bin.install "evm-cloud"
  end

  test do
    assert_match "Deploy EVM blockchain data infrastructure on AWS", shell_output("#{bin}/evm-cloud --help")
  end
end
