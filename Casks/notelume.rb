cask "notelume" do
  version "1.0.2"
  sha256 "3fb3f22d3cad2f69313f8aab42d1471386e34627204e8e181473dd38b7cda271"

  url "https://github.com/cybasoft/notelume/releases/download/v#{version}/NoteLume-#{version}.dmg"
  name "NoteLume"
  desc "Markdown notes for your Mac with MenuBar integration"
  homepage "https://github.com/cybasoft/notelume"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "NoteLume.app"

  zap trash: [
    "~/Library/Containers/com.cybasoft.notelume",
    "~/Library/Preferences/com.cybasoft.notelume.plist",
  ]
end
