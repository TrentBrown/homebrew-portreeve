class Portreeve < Formula
  desc "Local authority for development ports"
  homepage "https://github.com/TrentBrown/portreeve"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TrentBrown/portreeve/releases/download/v0.1.0-preview.2/portreeve-v0.1.0-macos-arm64", using: :nounzip
      sha256 "aa9e95414a27a97e87df44e2c159906ca81b6f47394fc40313bcecb982161627"
    else
      url "https://github.com/TrentBrown/portreeve/releases/download/v0.1.0-preview.2/portreeve-v0.1.0-macos-x64", using: :nounzip
      sha256 "efb7a5b52f3be58f4fadd5f72bf73f70193719af4c2f9aa18c5eba1b2c116ae2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TrentBrown/portreeve/releases/download/v0.1.0-preview.2/portreeve-v0.1.0-linux-arm64", using: :nounzip
      sha256 "de937cae5efceb09c2403c5624490ae2ac56d3843acd1a4f7254fdec78064a28"
    else
      url "https://github.com/TrentBrown/portreeve/releases/download/v0.1.0-preview.2/portreeve-v0.1.0-linux-x64", using: :nounzip
      sha256 "22ff3aa2f1611730d27afc1eff4e1c42eb5b1e903ef8739b572884d546234545"
    end
  end

  def install
    artifact = Dir["portreeve-v*"].fetch(0)
    bin.install artifact => "portreeve"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/portreeve --version").strip
  end
end
