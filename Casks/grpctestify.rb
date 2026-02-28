cask "grpctestify" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.5"
  sha256 arm: "5e28fd2efda69282940a711f731d34b8a7dbfa16adfa01fcc67e1379a9a22f64", intel: "2822c1126fc45a1e445ca28c62677872880a185a217be18746bc0298eae5ac44"

  url "https://github.com/gripmock/grpctestify-rust/releases/download/v#{version}/grpctestify-macos-#{arch}.tar.gz"
  name "gRPCTestify"
  desc "gRPC testing utility written in Rust"
  homepage "https://github.com/gripmock/grpctestify-rust"

  binary "grpctestify", target: "grpctestify"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{HOMEBREW_PREFIX}/bin/grpctestify"], must_succeed: false
  end

  caveats <<~EOS
    If macOS still blocks launch, run:
      xattr -dr com.apple.quarantine "/bin/grpctestify"
  EOS

  zap trash: [
    "~/.grpctestify",
  ]
end
