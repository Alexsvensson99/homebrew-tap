class Pkglift < Formula
  desc "Safely migrate CocoaPods dependencies to Swift Package Manager"
  homepage "https://github.com/Alexsvensson99/PkgLift"
  url "https://github.com/Alexsvensson99/PkgLift/releases/download/v0.6.1/pkglift-macos-arm64.tar.gz"
  sha256 "b085f570a2ebd7a1b1da1dd607efce28ed0ecb474e468953bee3af194c1f1adb"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    libexec.install "pkglift", "PkgLift_PkgLiftRegistry.bundle"
    bin.install_symlink libexec/"pkglift"
  end

  test do
    assert_equal "0.6.1", shell_output("#{bin}/pkglift version").strip
    system bin/"pkglift", "registry", "validate"
  end
end
