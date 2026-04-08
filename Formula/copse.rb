class Copse < Formula
  desc "TUI for running Claude Code tasks in parallel using git worktrees"
  homepage "https://github.com/daiwahome/copse"
  url "https://github.com/daiwahome/copse.git", tag: "v0.4.0"
  license "MIT"

  bottle do
    root_url "https://github.com/daiwahome/homebrew-copse/releases/download/copse-0.4.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "59be1b3b0ce672bd5a2d98ccbc04b380a0eabd622a6afdcd6506797b77e6d9f3"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "52e62d7dcf78236ad882530b7421170c7e43801b43333d9152657b176e96ea0f"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "4ba45e2999a1219892a259da93b586503a4eb7a6c39fb0c616696f17ae0105f9"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "a9826eb6eebef543f20ff555e40d8c0563c3914446a7670908fabc95d86df8aa"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "copse #{version}", shell_output("#{bin}/copse --version")
  end
end
