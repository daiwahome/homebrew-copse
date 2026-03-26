class Copse < Formula
  desc "TUI for running Claude Code tasks in parallel using git worktrees"
  homepage "https://github.com/daiwahome/copse"
  url "https://github.com/daiwahome/copse.git", tag: "v0.1.1"
  license "MIT"

  bottle do
    root_url "https://github.com/daiwahome/homebrew-copse/releases/download/copse-0.1.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "ba642d1d794a320984ab80533d043efad8ff439f3e17379c0f757ffc0764bd1b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "af2f58a698ad1fa1b1edd5e2749dac2bae03ebadc0ce9760b3e8762c4bbb8af4"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "copse #{version}", shell_output("#{bin}/copse --version")
  end
end
