class Copse < Formula
  desc "TUI for running Claude Code tasks in parallel using git worktrees"
  homepage "https://github.com/daiwahome/copse"
  url "https://github.com/daiwahome/copse.git", tag: "v0.1.1"
  license "MIT"

  bottle do
    root_url "https://github.com/daiwahome/homebrew-copse/releases/download/copse-0.1.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "5c7912f2b98b3c3c0065a7bb0f58c4f9d59f047a52971b089fbd087efddfd90d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "575137a678863df717b873f827014fcd40a4b5228d6634cd72e7adef9621374a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "copse #{version}", shell_output("#{bin}/copse --version")
  end
end
