class Rfig < Formula
  desc "Inline terminal command completion for zsh, Bash and Fish"
  homepage "https://github.com/tamia6/rfig"
  url "https://github.com/tamia6/rfig/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "8f6f88984f02a9aebc0cb1b3b7cc1df4bd3163b8ed2b9d14730488bcdf5db1cf"
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
      Existing installations: run `#{opt_bin}/rfig setup` once to use upgrade-safe adapter links.
      Open a new shell session after upgrading rfig.
      Bash requires 4.4 or newer; Fish requires 3.6 or newer.
    EOS
  end

  test do
    assert_match "setup", shell_output("#{bin}/rfig --help")
  end
end
