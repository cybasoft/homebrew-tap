cask "passbar" do
  version "1.0.3"
  sha256 "ab9adf106b8a5659b6963e237d1f54bb86873bb309ee34cf7869b4fa72e387cc"

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
