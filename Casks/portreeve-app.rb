cask "portreeve-app" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm: "f32ee8c44d31f428e00685acd828c1379d824074d7421bb13807dc14574191dd",
         intel: "5b5f23e475c4113a3bfa693ee63858a81ed9ec30df0196b812ae8daaf056c129"

  url "https://github.com/TrentBrown/portreeve/releases/download/v0.1.0-preview.3/PortReeve-0.1.0-macos-#{arch}.dmg"
  name "PortReeve"
  desc "Local authority for development ports"
  homepage "https://github.com/TrentBrown/portreeve"

  app "PortReeve.app"

  caveats <<~EOS
    PortReeve is alpha software. This preview may be unsigned. If macOS blocks
    first launch, verify the release checksum and use the scoped System Settings >
    Privacy & Security > Open Anyway flow described at:
    https://github.com/TrentBrown/portreeve/blob/main/docs/installation.md

    PortReeve Desktop and its supervised per-user service have separate lifecycles.
    Before removing the app, use its Service tab or the PortReeve CLI to uninstall
    supervision. Uninstall preserves claims, history, and settings. Purge remains
    a separate explicit, confirmation-bound operation.
  EOS
end
