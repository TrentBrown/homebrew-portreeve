class Portreeve < Formula
  desc "Local authority for development ports"
  homepage "https://github.com/TrentBrown/portreeve"
  version "0.1.0-preview.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TrentBrown/portreeve/releases/download/v0.1.0-preview.10/portreeve-v0.1.0-preview.10-macos-arm64", using: :nounzip
      sha256 "e9915a8d71178bec1b90da3cf6a772e1d150ba48050d80b0105873182e9c217f"
    else
      url "https://github.com/TrentBrown/portreeve/releases/download/v0.1.0-preview.10/portreeve-v0.1.0-preview.10-macos-x64", using: :nounzip
      sha256 "ca5863c97d0c7b237a913ab1705a893404fa5012c731b5ed30a55b62eab741a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TrentBrown/portreeve/releases/download/v0.1.0-preview.10/portreeve-v0.1.0-preview.10-linux-arm64", using: :nounzip
      sha256 "ffbf492fe43dc3e1ac86796ca5dcc8566265c230fbc490276a4b16d84b238ab7"
    else
      url "https://github.com/TrentBrown/portreeve/releases/download/v0.1.0-preview.10/portreeve-v0.1.0-preview.10-linux-x64", using: :nounzip
      sha256 "76b8ef9f0cc9fb3b46d914b01c6e8a1894a828f49d84600ee047d05a3f934d74"
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
