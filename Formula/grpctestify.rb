class Grpctestify < Formula
  desc "Utility for testing gRPC servers"
  homepage "https://github.com/gripmock/grpctestify"
  url "https://github.com/gripmock/grpctestify/releases/download/v0.0.10/grpctestify.sh"
  sha256 "91bec07346b94393c0918bf5c4af117584011f32440e67dc0f1ca00647f8ccc6"

  depends_on "grpcurl"
  depends_on "jq"

  def install
    bin.install "grpctestify.sh" => "grpctestify"
  end

  test do
    assert_match "v0.0.10", shell_output("#{bin}/grpctestify --version")
  end
end
