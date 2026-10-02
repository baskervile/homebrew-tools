class Tock < Formula
  desc "Terminal clock with fixed-width digits and centered timers"
  homepage "https://github.com/baskervile/tock"
  url "https://github.com/baskervile/tock/releases/download/reinit-v0.1.0-1/tock-reinit-v0.1.0-1-macos-arm64.tar.gz"
  version "0.1.0-1"
  sha256 "751b62938068d34e0fa09f8d8b40ca3af888387a813aa924e1df52947e614f77"
  license "MIT"
  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "tock"
  end

  test do
    assert_match "tock 0.1.0", shell_output("#{bin}/tock --version")
  end
end
