class Ponder < Formula
  desc "Coverage-gated multi-pass review and deliberation engine for coding agents"
  homepage "https://github.com/Quinnod345/ponder"
  url "https://github.com/Quinnod345/ponder/archive/refs/tags/v1.1.2.tar.gz"
  version "1.1.1"
  sha256 "3ef5607bb821d8f0b4a4ef9056e7aa7a9da7f491bbdd27b243c62225474ef806"
  license "MIT"
  head "https://github.com/Quinnod345/ponder.git", branch: "main"

  depends_on "node"

  def install
    libexec.install "bin", "lib", "lenses", "skill", "skills", "oca", "package.json", "SPEC.md", "README.md", "LICENSE"
    bin.install_symlink libexec/"bin/ponder"
  end

  test do
    assert_match "1.1.0", shell_output("#{bin}/ponder version")
  end
end
