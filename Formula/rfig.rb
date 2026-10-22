class Rfig < Formula
  desc "Inline terminal command completion for zsh, Bash and Fish"
  homepage "https://github.com/tamia6/rfig"
  url "https://github.com/tamia6/rfig/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "64251ea402c6156428619856fe4f879e7ba26c0d27ad115ffbfb02b5171ae444"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    pkgshare.install "rfig.zsh", "rfig.bash", "rfig.fish"
  end

  def caveats
    <<~EOS
      Run `rfig setup` to scan your commands and enable integration for your default shell.
      Use `rfig setup --shell zsh|bash|fish` to choose another shell.
      Bash requires 4.4 or newer; Fish requires 3.6 or newer.
    EOS
  end

  test do
    assert_match "setup", shell_output("#{bin}/rfig --help")
  end
end
