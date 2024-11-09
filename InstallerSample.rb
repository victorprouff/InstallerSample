class InstallerSample < Formula

    desc "Installer Sample"
    homepage "https://github.com/victorprouff/homebrew-InstallerSample"
    url "https://github.com/victorprouff/homebrew-InstallerSample/releases/download/v1.0.2/installersample-1.0.2.tar.gz"
    sha256 "c16e9cb1d85e4f70bffd1f14bf07d694e020f27147dc6c76dc3343c14d69c3d3"
    version "1.0.2"
  
    def install
        bin.install "installersample"
    end
end