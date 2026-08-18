cask "portreeve-app" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0-preview.4"
  sha256 arm: "152bae9e7fc72e7b9c9d99e38b26c770cbcc5cb980a3d636a95578f6ca30e770",
         intel: "10b5e6461294616a6dfbc77894ad9665863872a60f4103919b749d7a2733dcd7"

  url "https://github.com/TrentBrown/portreeve/releases/download/v0.1.0-preview.4/PortReeve-0.1.0-preview.4-macos-#{arch}.dmg"
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
