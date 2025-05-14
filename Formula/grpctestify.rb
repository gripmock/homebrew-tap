# Formula for Grpctestify was automatically generated via GitHub Actions from:
# https://github.com/gripmock/grpctestify 

class Grpctestify < Formula
  desc "Utility for testing gRPC servers"
  homepage "https://github.com/gripmock/grpctestify"
  url "https://github.com/gripmock/grpctestify/releases/download/v0.0.12/grpctestify.sh"
  sha256 "d21784b38c02392004cde9a9b1b7f5dc064d447d4b46314220278724f795c119"

  depends_on "grpcurl"
  depends_on "jq"

  def install
    bin.install "grpctestify.sh" => "grpctestify"
  end

  test do
    assert_match "v0.0.12", shell_output("#{bin}/grpctestify --version")
  end
end
