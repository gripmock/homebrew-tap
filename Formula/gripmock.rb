# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gripmock < Formula
  desc "A mock server for gRPC services using .proto files or compiled .pb descriptors"
  homepage "https://bavix.github.io/gripmock/"
  version "3.2.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bavix/gripmock/releases/download/v3.2.16/gripmock_3.2.16_darwin_amd64.tar.gz"
      sha256 "7709a7ab6a76f622a058d700d5385b335e2657ba8dc8d5d2828acbd90ceaceb4"

      def install
        bin.install "gripmock"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bavix/gripmock/releases/download/v3.2.16/gripmock_3.2.16_darwin_arm64.tar.gz"
      sha256 "3662220c941e0b4e1913f6161819bf72cc81ddbda50b0173cf2bd83ac2ee2888"

      def install
        bin.install "gripmock"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/bavix/gripmock/releases/download/v3.2.16/gripmock_3.2.16_linux_amd64.tar.gz"
      sha256 "b7e7c9f6c462310ddc00ddca8ccce96892cc33ba9a16c9ba08607b857ffa7d87"
      def install
        bin.install "gripmock"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/bavix/gripmock/releases/download/v3.2.16/gripmock_3.2.16_linux_arm64.tar.gz"
      sha256 "9879cec4155ff77271c427ad6156801aac69bab5b5cb3e0b90df11e9c9e8d865"
      def install
        bin.install "gripmock"
      end
    end
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/gripmock --version")
  end
end
