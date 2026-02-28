cask "grpctestify" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.4"
  sha256 arm: "4c5779cb38303eeab294c17fa23a9dfa83a768f5a6b55b4cef0b8cc2109844e0", intel: "ca17708d20ae1e53afde18cd91ad17022874eb185e153ac3b951cb25875726a6"

  url "https://github.com/gripmock/grpctestify-rust/releases/download/v#{version}/grpctestify-macos-#{arch}.tar.gz"
  name "gRPCTestify"
  desc "gRPC testing utility written in Rust"
  homepage "https://github.com/gripmock/grpctestify-rust"

  binary "grpctestify", target: "grpctestify"

  zap trash: [
    "~/.grpctestify",
  ]
end
