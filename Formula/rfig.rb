class Rfig < Formula
  desc "Inline terminal command completion for zsh, Bash and Fish"
  homepage "https://github.com/tamia6/rfig"
  url "https://github.com/tamia6/rfig/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "a6d2bf131697099953567d79a936352267316438813a6fac4d5206b5d3b6a93b"
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
