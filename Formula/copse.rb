class Copse < Formula
  desc "TUI for running Claude Code tasks in parallel using git worktrees"
  homepage "https://github.com/daiwahome/copse"
  url "https://github.com/daiwahome/copse.git", tag: "v0.4.1"
  license "MIT"

  bottle do
    root_url "https://github.com/daiwahome/homebrew-copse/releases/download/copse-0.4.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "6a3482d62c64873acbc4fdda090474bacbcb73b6454566184d3ba44444c7f5ea"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "f06b54cdd954f98a2b735aaa733d5dc54c93f89d0bd8aedd5b7e60ac372a408a"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "9df4ecf498d566d91cfcb013f962d7cf872ff82c87e375029b0e22d5302b5872"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "bb87b45cb440d3b09158821cbbc50e3776471b3c88d69a261f6463299e980c41"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "copse #{version}", shell_output("#{bin}/copse --version")
  end
end
