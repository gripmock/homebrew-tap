# DEADLINE: 2027-12-31 - Please migrate to cask
# brew install --cask grpctestify
#
# This formula is deprecated and will be removed after 2027-12-31

class Grpctestify < Formula
  desc "gRPC testing utility written in Rust (deprecated - use cask)"
  homepage "https://github.com/gripmock/grpctestify-rust"
  url "https://github.com/gripmock/grpctestify-rust/releases/download/v1.3.5/grpctestify-linux-amd64.tar.gz"
  sha256 "67b225df0e271a499ba98e6a592a2e3899d9dafc62e497d19dd1a5c91121acd1"
  version "1.3.5"
  license "MIT"
  deprecated! date: "2027-12-31", because: "use cask instead"

  def install
    bin.install "grpctestify"
  end

  test do
    assert_match "1.3.5", shell_output("#{bin}/grpctestify --version")
  end
end
