class Ponder < Formula
  desc "Coverage-gated multi-pass review and deliberation engine for coding agents"
  homepage "https://github.com/Quinnod345/ponder"
  url "https://github.com/Quinnod345/ponder/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "d1a26adecbe92e9835cecdf9c9e7250cfb926c5271d10ddae0ac070a53f392bf"
  license "MIT"
  head "https://github.com/Quinnod345/ponder.git", branch: "main"

  depends_on "node"

  def install
    libexec.install "bin", "lib", "lenses", "skill", "oca", "package.json", "SPEC.md", "README.md", "LICENSE"
    bin.install_symlink libexec/"bin/ponder"
  end

  test do
    assert_match "1.0.0", shell_output("#{bin}/ponder version")
  end
end
