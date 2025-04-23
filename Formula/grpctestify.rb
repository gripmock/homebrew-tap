class Grpctestify < Formula
    desc "Utility for testing gRPC servers"
    homepage "https://github.com/gripmock/grpctestify"
    url "https://github.com/gripmock/grpctestify/releases/download/v0.0.9/grpctestify.sh"
    sha256 "7b73f5c80f8e5ed1e94dc12010a1c5ffeea85641da153d4587ecb113100e4346"
  
    depends_on "grpcurl"
    depends_on "jq"
  
    def install
      bin.install "grpctestify.sh" => "grpctestify"
    end
  
    test do
      assert_match "v0.0.9", shell_output("#{bin}/grpctestify --version")
    end
  end
