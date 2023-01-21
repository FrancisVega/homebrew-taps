class Fzfnpm < Formula
  desc "A fuzzy finder npm script runner"
  homepage "https://github.com/FrancisVega/fzfnpm"
  url "https://github.com/FrancisVega/fzfnpm/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "883cf5df0a76abbd22726609d8f516134e23350bfcb7fee5f2d29b1a5a0dc147"

  license "MIT"

  depends_on "bash" => :run
  depends_on "fzf" => :run

  def install
    bin.install "bin/fzfnpm"
  end

  test do
  end
end
