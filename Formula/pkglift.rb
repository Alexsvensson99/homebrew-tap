class Pkglift < Formula
  desc "Safely migrate CocoaPods dependencies to Swift Package Manager"
  homepage "https://github.com/Alexsvensson99/PkgLift"
  url "https://github.com/Alexsvensson99/PkgLift/releases/download/v0.9.0/pkglift-macos-arm64.tar.gz"
  sha256 "397ebaf330b28045fac3d45d5b58e84c36163f439d29f8ea06108b2611b6e3a8"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    libexec.install "pkglift", "PkgLift_PkgLiftRegistry.bundle"
    bin.install_symlink libexec/"pkglift"
  end

  test do
    assert_equal "0.9.0", shell_output("#{bin}/pkglift version").strip
    system bin/"pkglift", "registry", "validate"
  end
end
