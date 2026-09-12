class Pkglift < Formula
  desc "Safely migrate CocoaPods dependencies to Swift Package Manager"
  homepage "https://github.com/Alexsvensson99/PkgLift"
  url "https://github.com/Alexsvensson99/PkgLift/releases/download/v0.7.1/pkglift-macos-arm64.tar.gz"
  sha256 "cec8f04d732ec8c2c3d901c1b4b6d1a6215fd7ba0ef51a222b8e95e99aec553d"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    libexec.install "pkglift", "PkgLift_PkgLiftRegistry.bundle"
    bin.install_symlink libexec/"pkglift"
  end

  test do
    assert_equal "0.7.1", shell_output("#{bin}/pkglift version").strip
    system bin/"pkglift", "registry", "validate"
  end
end
