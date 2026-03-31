class Copse < Formula
  desc "TUI for running Claude Code tasks in parallel using git worktrees"
  homepage "https://github.com/daiwahome/copse"
  url "https://github.com/daiwahome/copse.git", tag: "v0.3.0"
  license "MIT"

  bottle do
    root_url "https://github.com/daiwahome/homebrew-copse/releases/download/copse-0.2.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "758aa35e53e16dfe25102a22825fa7b5ccae88d7b5f9deb041fe491a57414c47"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "64a99274b2bbe6ce98b3eb707be3d76fda301014a3be4af373a7e0ec070b1bef"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "e1ddd98fb5a9bc35073e7c8ba815efa3e62846b4f2c48bb6bb3077187f426aa7"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "0ff1f6d26b69c35d78dcffa7ec8c35e41b58dd30c55abe904dfc25bd173fff54"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "copse #{version}", shell_output("#{bin}/copse --version")
  end
end
