# Formula for Grpctestify was automatically generated via GitHub Actions from:
# https://github.com/gripmock/grpctestify 

class Grpctestify < Formula
  desc "Utility for testing gRPC servers"
  homepage "https://github.com/gripmock/grpctestify"
  url "https://github.com/gripmock/grpctestify/releases/download/v1.0.0/grpctestify.sh"
  sha256 "42675607e9c0f53993fe54e490de2a9bb3994d623e1e3b3c1086b7a59e585491"

  depends_on "grpcurl"
  depends_on "jq"

  def install
    bin.install "grpctestify.sh" => "grpctestify"
  end

  test do
    assert_match "v1.0.0", shell_output("#{bin}/grpctestify --version")
  end
end
