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
    bash_output = `#{bin}/grpctestify --bash-completion`
    raise "Failed to generate bash completion" if bash_output.empty?
    bash_completion_script = "\#{buildpath}/grpctestify-bash-completion"
    File.write(bash_completion_script, bash_output)
    bash_completion.install bash_completion_script => "grpctestify"

    # Generate and install zsh completion
    zsh_output = `#{bin}/grpctestify --zsh-completion`
    raise "Failed to generate zsh completion" if zsh_output.empty?
    zsh_completion_script = "\#{buildpath}/grpctestify-zsh-completion"
    File.write(zsh_completion_script, zsh_output)
    zsh_completion.install zsh_completion_script => "_grpctestify"
  end

  test do
    assert_match "v0.0.11", shell_output("#{bin}/grpctestify --version")
  end
end
