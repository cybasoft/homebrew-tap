cask "macsweep" do
  version "0.1.1"
  sha256 "6710426ce8008912393cd64b38c6239baf40beea6dda5b52baa95375dbbfff58"

  url "https://github.com/cybasoft/macsweep/releases/download/v#{version}/macsweep-#{version}.tar.gz"
  name "macsweep"
  desc "Modular macOS utility toolbox: health checks, cleanup, development diagnostics, and optional utilities"
  homepage "https://github.com/cybasoft/macsweep"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "macsweep/macsweep"

  depends_on macos: :sonoma

  zap trash: "~/.local/share/macsweep"
end
