class Copse < Formula
  desc "TUI for running Claude Code tasks in parallel using git worktrees"
  homepage "https://github.com/daiwahome/copse"
  url "https://github.com/daiwahome/copse.git", tag: "v0.4.2"
  license "MIT"

  bottle do
    root_url "https://github.com/daiwahome/homebrew-copse/releases/download/copse-0.4.2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "a8f00d007c504fe519a4a34b110fff4d17d98eddc39a881d7890e40beca9920a"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6b08780cee30c7b2fc57b87e21aadc2210f134eeba7dcd260a3503a33520d259"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "2c77245f342ca288a1e50625ed3fe9cb52ce06a0473523468e563781cb8845fe"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "9c98fd13cdca627c3e53e5c766b94f7aed1d0e79dd2e4162f03caeccd90f24c5"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "copse #{version}", shell_output("#{bin}/copse --version")
  end
end
