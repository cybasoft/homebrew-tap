cask "passbar" do
  version "0.9.2"
  sha256 "dcf8ce925830b6d6589551f04caba4c5e2141c16a4909897c439474a8be78a02"

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
