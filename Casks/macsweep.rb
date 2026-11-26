cask "macsweep" do
  version "0.1.0"
  sha256 "d4ab68b52f82d93af9c6dabec5e3ca92e1eee96f446fd0cb5cb285346b806aee"

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
