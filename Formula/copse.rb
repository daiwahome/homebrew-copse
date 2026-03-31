class Copse < Formula
  desc "TUI for running Claude Code tasks in parallel using git worktrees"
  homepage "https://github.com/daiwahome/copse"
  url "https://github.com/daiwahome/copse.git", tag: "v0.3.0"
  license "MIT"

  bottle do
    root_url "https://github.com/daiwahome/homebrew-copse/releases/download/copse-0.3.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "b3198320221cf186417289627aefdc674cc7db728589ed136bfdc925f7bc1d13"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "bff36a87132ed480b7e24faf27ec574b6de00169563131de001c82b37ad9831c"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "7934f5eaa1daece8edc9442729947c8ca252ef04a09a9890433dfbe64d3ed2c5"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "6b9b2f41400727c95c74663c8831297775965bdde93539d8c364e9386ebfab95"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "copse #{version}", shell_output("#{bin}/copse --version")
  end
end
