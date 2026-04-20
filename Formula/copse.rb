class Copse < Formula
  desc "TUI for running Claude Code tasks in parallel using git worktrees"
  homepage "https://github.com/daiwahome/copse"
  url "https://github.com/daiwahome/copse.git", tag: "v0.4.3"
  license "MIT"

  bottle do
    root_url "https://github.com/daiwahome/homebrew-copse/releases/download/copse-0.4.3"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "db09a35f3e9696ab938ff8723cf2800023d62d8451e2097d7f1eaf7999ca8aef"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "d9845acab215a541b910b487debdc10eca50efb389f2a35f8646e162c638bd4e"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "99a3b55df1d494b0e41c2cbcae019d23e1c7c8dde58ac40c3fd993552823f1f8"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "9ea84816da0776047b53c46fb7d34c15eb114381f16a7fd27784daa685723c2e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "copse #{version}", shell_output("#{bin}/copse --version")
  end
end
