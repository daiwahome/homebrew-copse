class Copse < Formula
  desc "TUI for running Claude Code tasks in parallel using git worktrees"
  homepage "https://github.com/daiwahome/copse"
  url "https://github.com/daiwahome/copse.git", tag: "v0.4.0"
  license "MIT"

  bottle do
    root_url "https://github.com/daiwahome/homebrew-copse/releases/download/copse-0.3.2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "d37e75021a85ef8233d112adccce50a9553e7d317c9340e945d514b3344ee3f2"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "c0996be41b5c94991400c4dd56cbd1d4be65b49bd137403c93ac206b52b4746f"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "19e74fbcaf78822d91ef2873805eaa932a5eee38198bd790604d686dc60af40c"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "ba233bcf3f0e0d15edef478ed8fe6c53d5663417055b9e22500e5392e21de5d4"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "copse #{version}", shell_output("#{bin}/copse --version")
  end
end
