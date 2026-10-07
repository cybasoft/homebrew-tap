cask "passbar" do
  version "0.9.0"
  sha256 "724d527ade704ed58d8b001a737a66e956d42cbdf257bc9e13d12f1581eb0263"

  url "https://github.com/cybasoft/passbar/releases/download/v#{version}/PassBar-#{version}.dmg"
  name "PassBar"
  desc "Menu-bar client for Passbolt API"
  homepage "https://github.com/cybasoft/passbar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "PassBar.app"

  zap trash: [
    "~/Library/Containers/com.cybasoft.passbar",
    "~/Library/Preferences/com.cybasoft.passbar.plist",
  ]
end
