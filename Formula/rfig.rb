class Rfig < Formula
  desc "Inline terminal command completion for zsh"
  homepage "https://github.com/tamia6/rfig"
  url "https://github.com/tamia6/rfig/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "ff96b5d80f65ca6db5b0f39482bc0dc8253c4cd2c3ea2344bc47c626f0eac78a"
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
