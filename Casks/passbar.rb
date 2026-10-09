cask "passbar" do
  version "0.9.2"
  sha256 "8b9eff8c39a1d37f6a27bf9f4a8aec1d1ae04747af9052b63ef6f8ede7e7fab5"

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
