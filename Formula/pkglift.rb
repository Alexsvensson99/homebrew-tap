class Pkglift < Formula
  desc "Safely migrate CocoaPods dependencies to Swift Package Manager"
  homepage "https://github.com/Alexsvensson99/PkgLift"
  url "https://github.com/Alexsvensson99/PkgLift/releases/download/v0.4.0/pkglift-macos-arm64.tar.gz"
  version "0.4.0"
  sha256 "52456f05d385dadd227b3fb053366c46c95ef87947aa159b53a8740eb275301e"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    libexec.install "pkglift", "PkgLift_PkgLiftRegistry.bundle"
    bin.install_symlink libexec/"pkglift"
  end

  test do
    assert_equal "0.4.0", shell_output("#{bin}/pkglift version").strip
    system bin/"pkglift", "registry", "validate"
  end
end
