class Copse < Formula
  desc "TUI for running Claude Code tasks in parallel using git worktrees"
  homepage "https://github.com/daiwahome/copse"
  url "https://github.com/daiwahome/copse.git", tag: "v0.1.3"
  license "MIT"

  bottle do
    root_url "https://github.com/daiwahome/homebrew-copse/releases/download/copse-0.1.3"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "38bde9474865eec9d1874f2bf21920ff582eeaa506337178291810d17ebf5b61"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "9848f96d2771ad7808254fb08488dfd0a9913d70f1c78c94bb6ef7ae27878de4"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "199f09aca97547177d2f4ce63092eb8eeb85decbc391bd20b340bdc904565a07"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "823278c7957bec893ebf6cf5afee1408086f6921d83c8a6b33788a7f33821737"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "copse #{version}", shell_output("#{bin}/copse --version")
  end
end
