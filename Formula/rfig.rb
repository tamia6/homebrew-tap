class Rfig < Formula
  desc "Inline terminal command completion for zsh"
  homepage "https://github.com/tamia6/rfig"
  url "https://github.com/tamia6/rfig/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "1c1a80ffd1a0f5fb5f0012d6747d210f820821c3fec12d8dae8f6910ebfa9166"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    pkgshare.install "rfig.zsh"
  end

  def caveats
    <<~EOS
      Run `rfig setup` to scan your commands and enable zsh integration.
      Open a new zsh terminal afterward.
    EOS
  end

  test do
    assert_match "setup", shell_output("#{bin}/rfig", 2)
  end
end
