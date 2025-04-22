class Gripmock < Formula
  desc "A mock server for gRPC services using .proto files or compiled .pb descriptors"
  homepage "https://bavix.github.io/gripmock/"
  version "3.2.4"

  # Dynamically determine the URL and SHA-256 based on the system architecture
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/bavix/gripmock/releases/download/v3.2.4/gripmock-v3.2.4-darwin-amd64.tar.gz"
      sha256 "0da94cbe260d7f19b006bb9442a2d90e6e02ffb59902bef1da78591099031c8e"
    elsif Hardware::CPU.arm?
      url "https://github.com/bavix/gripmock/releases/download/v3.2.4/gripmock-v3.2.4-darwin-arm64.tar.gz"
      sha256 "0c0bfe0f5ec09da33432aa59280673433ab136b8013f5494d1622763329765dd"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/bavix/gripmock/releases/download/v3.2.4/gripmock-v3.2.4-linux-amd64.tar.gz"
      sha256 "abf7936b468ecabc355a293e35a016e184cedbef7f52a1ef0d8467dde6a7f37d"
    elsif Hardware::CPU.arm?
      url "https://github.com/bavix/gripmock/releases/download/v3.2.4/gripmock-v3.2.4-linux-arm64.tar.gz"
      sha256 "1cd662f0dc6a1b1007b077f4cf1d7041ba45d104a8d1893ead9adc304210242a"
    end
  end

  def install
    # Install the binary into the bin directory
    bin.install "gripmock"
  end

  test do
    # Test that the binary is installed and returns the correct version
    assert_match "v#{version}", shell_output("#{bin}/gripmock --version")
  end
end
