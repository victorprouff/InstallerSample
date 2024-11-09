class InstallerSample < Formula

    desc "Installer Sample"
    homepage "https://github.com/victorprouff/homebrew-InstallerSample"
    url "https://github.com/victorprouff/homebrew-InstallerSample/releases/download/v1.0.2/installersample-1.0.2.tar.gz"
    sha256 "d2c1ddbe570e08573b8b9df838bc56cd871ba57c4f511d12ba0ccb0bd8c1b144"
    version "1.0.2"
  
    def install
        bin.install "installersample"
    end
end