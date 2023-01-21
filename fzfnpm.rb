class Fzfnpm < Formula
  desc "A fuzzy finder npm script runner"
  homepage "https://github.com/FrancisVega/fzfnpm"
  url "https://github.com/FrancisVega/fzfnpm/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "c5c5f1faae3eb7f6c8c376d7d0f9a09c7a25da1a0be9fc28cd9ff6ef4d9862b5"
  license "MIT"

  depends_on "bash" => :run
  depends_on "fzf" => :run

  def install
    bin.install "bin/fzfnpm.sh"
  end

  test do
  end
end
