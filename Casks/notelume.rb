cask "notelume" do
  version "1.0.1"
  sha256 "7c6acf2db03e94255a98ee763e3a308573d8a622fe9130616d90d651bc413923"

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
