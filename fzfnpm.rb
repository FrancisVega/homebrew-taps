class Fzfnpm < Formula
  desc "A fuzzy finder npm script runner"
  homepage "https://github.com/FrancisVega/fzfnpm"
  url "https://github.com/FrancisVega/fzfnpm/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "bb1fdea62ad430fe0ed4c6c26d3c7f1b0ab057e843fd1332596ddf8a5c1a27df"

  license "MIT"

  depends_on "bash" => :run
  depends_on "fzf" => :run

  def install
    bin.install "bin/fzfnpm"
  end

  test do
  end
end
