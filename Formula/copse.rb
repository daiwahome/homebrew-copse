class Copse < Formula
  desc "TUI for running Claude Code tasks in parallel using git worktrees"
  homepage "https://github.com/daiwahome/copse"
  url "https://github.com/daiwahome/copse.git", tag: "v0.3.1"
  license "MIT"

  bottle do
    root_url "https://github.com/daiwahome/homebrew-copse/releases/download/copse-0.3.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "d0e513b186a4ccbb10e8d17e89710cb5f89eb7f1f2d7ec74fd78df5c7e7ddf9e"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "1ed989d8d4c884625eaf04c5f91a8cdac5da0d917c122c72d3a45fdad3ec9d80"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "9911a87342f4882e84f9b50e104eb3d29dafbf604637888eaf88fa6ce0b85214"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "bffff8b90b54b2391f8d7df44ed38a9b8bf330a7ffbf197a23fb91a3cf101a25"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "copse #{version}", shell_output("#{bin}/copse --version")
  end
end
