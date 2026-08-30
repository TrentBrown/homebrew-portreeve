cask "portreeve-app" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0-preview.10"
  sha256 arm: "31ede1d5059bd5ca750810c666e58dfb436623e3762eef7773d713048d23fc90",
         intel: "b74a8d2af4e5c026a083dd5e1bac15b8a31d009658911245b14a9084b5f67b62"

  url "https://github.com/TrentBrown/portreeve/releases/download/v0.1.0-preview.10/PortReeve-0.1.0-preview.10-macos-#{arch}.dmg"
  name "PortReeve"
  desc "Local authority for development ports"
  homepage "https://github.com/TrentBrown/portreeve"

  app "PortReeve.app"

  caveats <<~EOS
    PortReeve is alpha software. This application is Developer ID-signed and notarized.

    PortReeve Desktop and its supervised per-user service have separate lifecycles.
    Before removing the app, use its Service tab or the PortReeve CLI to uninstall
    supervision. Uninstall preserves claims, history, and settings. Purge remains
    a separate explicit, confirmation-bound operation.
  EOS
end
