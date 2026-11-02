class Ponder < Formula
  desc "Coverage-gated multi-pass review and deliberation engine for coding agents"
  homepage "https://github.com/Quinnod345/ponder"
  url "https://github.com/Quinnod345/ponder/archive/5d979ac033d5765a37b5e3752a057e7258d767f7.tar.gz"
  version "1.0.0"
  sha256 "8b431e189e12585649dd25e6b4cfefb803381d8f2910eefcfa2b8e20ce65f417"
  license "MIT"
  head "https://github.com/Quinnod345/ponder.git", branch: "main"

  depends_on "node"

  def install
    libexec.install "bin", "lib", "lenses", "skill", "skills", "oca", "package.json", "SPEC.md", "README.md", "LICENSE"
    bin.install_symlink libexec/"bin/ponder"
  end

  test do
    assert_match "1.0.0", shell_output("#{bin}/ponder version")
  end
end
