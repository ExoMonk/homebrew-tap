class EvmCloud < Formula
  desc "CLI for deploying EVM blockchain data infrastructure"
  homepage "https://github.com/ExoMonk/evm-cloud"
  version "0.0.1-alpha6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha6/evm-cloud_0.0.1-alpha6_darwin_arm64.tar.gz"
      sha256 "01040a8c79cd82b308ab7b569d827d073843a03a1a9eb478f5e5b96ef84b06b6"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha6/evm-cloud_0.0.1-alpha6_darwin_amd64.tar.gz"
      sha256 "a52b93e8ce63a8fbe6815c2c634a1177ac531765718c1dd60eadfb39c6d80b23"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha6/evm-cloud_0.0.1-alpha6_linux_arm64.tar.gz"
      sha256 "299e7961d38dd4778db11b4b9d94ba2c677f54204b08be3ec63d1837d455633c"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha6/evm-cloud_0.0.1-alpha6_linux_amd64.tar.gz"
      sha256 "61e7bd4ca3d8ca4487c55c5c4129f8dcf78616abe915a1da05e9c447c3224226"
    end
  end

  def install
    bin.install "evm-cloud"
  end

  test do
    assert_match "Deploy EVM blockchain data infrastructure on AWS", shell_output("#{bin}/evm-cloud --help")
  end
end
