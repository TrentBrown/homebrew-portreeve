cask "portreeve-app" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm: "0a3d29a90cace6effb80d5aa9186ec1994440ba3ae12da51fa595a59a9f4d9d1",
         intel: "ec083d68d1030c4300743fd3ff68f28ee7bf387d774fbeec8f3ca6c1fe5283a7"

  url "https://github.com/TrentBrown/portreeve/releases/download/v0.1.0-preview.2/PortReeve-0.1.0-macos-#{arch}.dmg"
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
