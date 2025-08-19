# Formula for Grpctestify was automatically generated via GitHub Actions from:
# https://github.com/gripmock/grpctestify 

class Grpctestify < Formula
  desc "Utility for testing gRPC servers"
  homepage "https://github.com/gripmock/grpctestify"
  url "https://github.com/gripmock/grpctestify/releases/download/v0.0.13/grpctestify.sh"
  sha256 "e9b9699254e3b28567bc7167b3ccff77a789420d455c7a3802629fa479756be3"

  depends_on "grpcurl"
  depends_on "jq"

  def install
    bin.install "grpctestify.sh" => "grpctestify"
  end

  test do
    assert_match "v0.0.13", shell_output("#{bin}/grpctestify --version")
  end
end
