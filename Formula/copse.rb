class Copse < Formula
  desc "TUI for running Claude Code tasks in parallel using git worktrees"
  homepage "https://github.com/daiwahome/copse"
  url "https://github.com/daiwahome/copse.git", tag: "v0.1.2"
  license "MIT"

  bottle do
    root_url "https://github.com/daiwahome/homebrew-copse/releases/download/copse-0.1.2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "d56725c359cc559fdb132ab8ea18522a1467be76590189ccfcdad1ee4c286057"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "98117e25978834dea7369077b78c55f11d78a9b6a59a77b6fa66226f6a589ed8"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "ced7c62002b8367b435e8c4714cdc8ede17244f27539799aa668c7bd383d3e82"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "9ab09c636a60d042c38fff5f86f3f042a1dda203976b5360d19ac80942f4eb65"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "copse #{version}", shell_output("#{bin}/copse --version")
  end
end
