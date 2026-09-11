class Pkglift < Formula
  desc "Safely migrate CocoaPods dependencies to Swift Package Manager"
  homepage "https://github.com/Alexsvensson99/PkgLift"
  url "https://github.com/Alexsvensson99/PkgLift/releases/download/v0.7.0/pkglift-macos-arm64.tar.gz"
  sha256 "dbfdc41f0be0137013d7ad2323625510a89001e74f0c88b5c37ec3e94f5de6f1"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    libexec.install "pkglift", "PkgLift_PkgLiftRegistry.bundle"
    bin.install_symlink libexec/"pkglift"
  end

  test do
    assert_equal "0.7.0", shell_output("#{bin}/pkglift version").strip
    system bin/"pkglift", "registry", "validate"
  end
end
