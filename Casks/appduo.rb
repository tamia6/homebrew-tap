cask "appduo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.6"
  sha256 arm:   "7999cd60336f5cc8ae0a93117490cc1d981b960f8f6c175579d8e5b42d4dfcd7",
         intel: "d1e1534034983dd1c6a65df8476da674871f257582d27fe7e986f1f7a5ef5cd1"

  url "https://github.com/tamia6/AppDuo/releases/download/v#{version}/AppDuo-#{arch}.dmg"
  name "AppDuo"
  desc "Application cloner with isolated data, names, and icons"
  homepage "https://tamia6.github.io/AppDuo/"

  depends_on macos: :sonoma

  app "AppDuo.app"

  caveats <<~EOS
    Cloning applications requires Xcode Command Line Tools.
    AppDuo is ad-hoc signed and is not Apple notarized.
  EOS
end
