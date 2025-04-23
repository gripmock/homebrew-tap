class Grpctestify < Formula
  desc "Utility for testing gRPC servers"
  homepage "https://github.com/gripmock/grpctestify"
  url "https://github.com/gripmock/grpctestify/releases/download/v0.0.11/grpctestify.sh"
  sha256 "6581ed60feeeed0704bac3489ea8d3fba84fdbee5968e00e6fae80c1f93e38b1"

  depends_on "grpcurl"
  depends_on "jq"

  def install
    bin.install "grpctestify.sh" => "grpctestify"

    # Generate and install bash completion
    bash_completion.install StringIO.new(`#{bin}/grpctestify --bash-completion`) => "grpctestify"

    # Generate and install zsh completion
    zsh_completion.install StringIO.new(`#{bin}/grpctestify --zsh-completion`) => "_grpctestify"
  end

  test do
    assert_match "v0.0.11", shell_output("#{bin}/grpctestify --version")
  end
end
