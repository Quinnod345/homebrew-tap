class Ponder < Formula
  desc "Coverage-gated multi-pass review and deliberation engine for coding agents"
  homepage "https://github.com/Quinnod345/ponder"
  url "https://github.com/Quinnod345/ponder/archive/refs/tags/v1.1.0.tar.gz"
  version "1.1.0"
  sha256 "f10ad414655f61d7c3b90ff5f64ac3e00fab9e4c2ca24f180fab55d23132b07d"
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
