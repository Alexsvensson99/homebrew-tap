# Homebrew Tap for PkgLift

Install the latest signed and notarized Apple Silicon release of PkgLift:

```bash
brew install Alexsvensson99/tap/pkglift
```

PkgLift requires Apple Silicon. The 1.0.1 signed package was verified on macOS
14.8.9 for core runtime and structural apply. Protected release acceptance
covered consumer migration/builds on macOS 15.7.9/Xcode 16.4. Separate local
validation covered core runtime and four migration/build cases on macOS
27.0/Xcode 27.0. These observations do not establish
exact macOS 14.0 support or a continuous Xcode version range. See the
[release notes](https://github.com/Alexsvensson99/PkgLift/releases/tag/v1.0.1)
for the qualified scope and upgrade guidance.
