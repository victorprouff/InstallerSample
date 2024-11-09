class InstallerSample < Formula

    desc "Installer Sample"
    homepage "https://github.com/victorprouff/InstallerSample"
    url "https://github.com/victorprouff/InstallerSample/releases/download/v1.0.0/InstallerSample-1.0.0.tar.gz"
    sha256 "5f70bf18a086007016e948b04aed3b82103a36bea41755b6cddfaf10ace3c6ef%"
    version "1.0.0"
  
    def install
        bin.install "InstallerSample"
    end
end
  