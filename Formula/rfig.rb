class Rfig < Formula
  desc "Inline terminal command completion for zsh"
  homepage "https://github.com/tamia6/rfig"
  url "https://github.com/tamia6/rfig/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "e99d1020e1004f39f72a734172786a67b8ca9f2dc75372a6cccded3ac98a3902"
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
