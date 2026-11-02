class Ponder < Formula
  desc "Coverage-gated multi-pass review and deliberation engine for coding agents"
  homepage "https://github.com/Quinnod345/ponder"
  url "https://github.com/Quinnod345/ponder/archive/bc9af33df61a24766369f438cb90ff6044356586.tar.gz"
  version "1.0.2"
  sha256 "f04f8f490569bb2a4b1678a7fb91fd0555fa8d9a13562a2d909294b0d75b6939"
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
