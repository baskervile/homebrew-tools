class Tock < Formula
  desc "Terminal clock with fixed-width digits and centered timers"
  homepage "https://github.com/baskervile/tock"
  url "https://github.com/baskervile/tock/releases/download/reinit-v0.1.1/tock-reinit-v0.1.1-macos-arm64.tar.gz"
  version "0.1.1"
  sha256 "3efda6f0d15a880fa31e089636f070c11d7afb605c422f2c8d4da8fab2f3c03d"
  license "MIT"
  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "tock"
  end

  test do
    assert_match "tock 0.1.1", shell_output("#{bin}/tock --version")
  end
end
