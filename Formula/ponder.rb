class Ponder < Formula
  desc "Coverage-gated multi-pass review and deliberation engine for coding agents"
  homepage "https://github.com/Quinnod345/ponder"
  url "https://github.com/Quinnod345/ponder/archive/refs/tags/v1.1.1.tar.gz"
  version "1.1.0"
  sha256 "ebd9f5996106d1af31e85c82094ae1d3260629e4dd63bb16784ae49dd5fd06a5"
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
