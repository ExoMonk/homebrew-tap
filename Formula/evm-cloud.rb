class EvmCloud < Formula
  desc "CLI for deploying EVM blockchain data infrastructure"
  homepage "https://github.com/ExoMonk/evm-cloud"
  version "0.0.1-alpha8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha8/evm-cloud_0.0.1-alpha8_darwin_arm64.tar.gz"
      sha256 "9fcf34dfafb68cd2de3b2b31821ddf550aad292ec85033a84484ce2befe6dee4"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha8/evm-cloud_0.0.1-alpha8_darwin_amd64.tar.gz"
      sha256 "9f36f41a93da49a28e3e513b45681b1eda9496acf6ea5cca9f5465fa67c5fd5c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha8/evm-cloud_0.0.1-alpha8_linux_arm64.tar.gz"
      sha256 "0a08a0b43119bef539f563192d474c52c9972ef50875e180ca439f2c74587ebd"
    else
      url "https://github.com/ExoMonk/evm-cloud/releases/download/0.0.1-alpha8/evm-cloud_0.0.1-alpha8_linux_amd64.tar.gz"
      sha256 "d32a53a65763e2b33936a41100aca15cfdbdae1532ecfee900f5b6dbeecfb400"
    end
  end

  def install
    bin.install "evm-cloud"
  end

  test do
    assert_match "Deploy EVM blockchain data infrastructure on AWS", shell_output("#{bin}/evm-cloud --help")
  end
end
