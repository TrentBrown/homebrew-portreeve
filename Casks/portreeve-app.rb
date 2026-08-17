cask "portreeve-app" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm: "6b41e44c7fac5a34f536b7929852e1ed206b14cad5ac140a0a26ac278fb6303d",
         intel: "209e05be98ee0fed8dddf847dbb2f3852f87c649a41118f0bdbeeb2fb367cec1"

  url "https://github.com/TrentBrown/portreeve/releases/download/v0.1.0-preview.1/PortReeve-0.1.0-macos-#{arch}.dmg"
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
