class Portreeve < Formula
  desc "Local authority for development ports"
  homepage "https://github.com/TrentBrown/portreeve"
  version "0.1.0-preview.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TrentBrown/portreeve/releases/download/v0.1.0-preview.4/portreeve-v0.1.0-preview.4-macos-arm64", using: :nounzip
      sha256 "0f7e6dc176e1fd4f5c37eec790cdb0babfd98cdc4468f71b1938cb417560904c"
    else
      url "https://github.com/TrentBrown/portreeve/releases/download/v0.1.0-preview.4/portreeve-v0.1.0-preview.4-macos-x64", using: :nounzip
      sha256 "dc05340d992494cc15a74d6c3f8196680e9bff3bdaa4fa104ad5772deb66fd75"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TrentBrown/portreeve/releases/download/v0.1.0-preview.4/portreeve-v0.1.0-preview.4-linux-arm64", using: :nounzip
      sha256 "039216a3e5ba76c7c80a9acbc4bf7795a4bf228cbcff7b4afdcae541a47df35b"
    else
      url "https://github.com/TrentBrown/portreeve/releases/download/v0.1.0-preview.4/portreeve-v0.1.0-preview.4-linux-x64", using: :nounzip
      sha256 "f7d23891f78530fbec6db7115b8797dbfb5dd282d833d454599fb52462a69d8e"
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
