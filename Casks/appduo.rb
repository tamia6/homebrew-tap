cask "appduo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.8"
  sha256 arm:   "b41b956ea94f44a396883cfba62299697b580785cefb438fe77e46f14fabbbf5",
         intel: "4eef92f18714d796a3f9d24d3c4b61a60340b304d4cd1b588bca1424d0c228f8"

  url "https://github.com/tamia6/AppDuo/releases/download/v#{version}/AppDuo-#{arch}.dmg"
  name "AppDuo"
  desc "Application cloner with isolated data, names, and icons"
  homepage "https://tamia6.github.io/AppDuo/"

  auto_updates true
  depends_on macos: :sonoma

  app "AppDuo.app"

  caveats <<~EOS
    Cloning applications requires Xcode Command Line Tools.
    AppDuo is ad-hoc signed and is not Apple notarized.
  EOS
end
