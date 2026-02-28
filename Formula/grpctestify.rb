# DEADLINE: 2027-12-31 - Please migrate to cask
# brew install --cask grpctestify
#
# This formula is deprecated and will be removed after 2027-12-31

class Grpctestify < Formula
  desc "gRPC testing utility written in Rust (deprecated - use cask)"
  homepage "https://github.com/gripmock/grpctestify-rust"
  url "https://github.com/gripmock/grpctestify-rust/releases/download/v1.3.4/grpctestify-linux-amd64.tar.gz"
  sha256 "531de12d6b8029b138187c8ec5a0bf9c2331865e8bdf9b2d8328aa784f72bb84"
  version "1.3.4"
  license "MIT"
  deprecated! date: "2027-12-31", because: "use cask instead"

  def install
    bin.install "grpctestify"
  end

  test do
    assert_match "1.3.4", shell_output("#{bin}/grpctestify --version")
  end
end
