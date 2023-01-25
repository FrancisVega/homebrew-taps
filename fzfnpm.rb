class Fzfnpm < Formula
  desc "Fuzzy finder npm script runner"
  homepage "https://github.com/FrancisVega/fzfnpm"
  url "https://github.com/FrancisVega/fzfnpm/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "0eca39f6734d27cd5083ba1a71c3095f272900229f4af70769752ca4204b0163"
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
