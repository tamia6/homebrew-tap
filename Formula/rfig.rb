class Rfig < Formula
  desc "Inline terminal command completion for zsh, Bash and Fish"
  homepage "https://github.com/tamia6/rfig"
  url "https://github.com/tamia6/rfig/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "7b651d2f3e8298c961af20f20d62e4ef02244cd4d01e6c5a7d4c82bdcf0dc9ed"
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
