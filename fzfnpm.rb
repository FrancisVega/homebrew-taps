class Fzfnpm < Formula
  desc "Fuzzy finder npm script runner"
  homepage "https://github.com/FrancisVega/fzfnpm"
  url "https://github.com/FrancisVega/fzfnpm/archive/refs/tags/v0.8.0.tar.gz"
  sha256 "acf4e34bac37303606eea3726b54a3721f1881c636ef0dcf60efd145c3e7d1da"
  license "MIT"

  depends_on "bash"
  depends_on "fzf"
  depends_on "jq"

  def install
    bin.install "bin/fzfnpm"
  end

  test do
    # +x
    assert_predicate Pathname.new("#{bin}/fzfnpm"), :executable?
    # If no package.json in the same path, return with an message and code 1
    assert_match "No package.json file \u{1FAE5}\n", shell_output("#{bin}/fzfnpm", 1)
  end
end
