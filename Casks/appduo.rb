cask "appduo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.9"
  sha256 arm:   "8533ede2e51189354e0dd6962cde74849bd3ede94a013e70d3b7c69433f48c43",
         intel: "17d109255398fb33af78b82327e7c21593392e98677153ee8f29f4b393bd58e7"

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
