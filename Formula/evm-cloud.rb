class EvmCloud < Formula
  desc "CLI for deploying EVM blockchain data infrastructure"
  homepage "https://github.com/ExoMonk/evm-cloud"
  version "0.0.1-alpha6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha6/evm-cloud_0.0.1-alpha6_darwin_arm64.tar.gz"
      sha256 "e928936177a34670625d7124edff043c8140c581842588ea081bf1107148b6a1"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha6/evm-cloud_0.0.1-alpha6_darwin_amd64.tar.gz"
      sha256 "21b975d529f657a94f4401f99f71b61cfe495f651ddec822710c09366164a1d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha6/evm-cloud_0.0.1-alpha6_linux_arm64.tar.gz"
      sha256 "a9daf02105f5ac76f842290e21c9013b87907e25ad546968db3821b999324fc3"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha6/evm-cloud_0.0.1-alpha6_linux_amd64.tar.gz"
      sha256 "9e311eb1bdc5da509b652dfed974ec32b0c73301ef8ebce6b67bded3c10ec1e7"
    end
  end

  def install
    bin.install "evm-cloud"
  end

  test do
    assert_match "Deploy EVM blockchain data infrastructure on AWS", shell_output("#{bin}/evm-cloud --help")
  end
end
