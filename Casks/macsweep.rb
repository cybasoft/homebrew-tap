cask "macsweep" do
  version "0.1.2"
  sha256 "593c50972248aa92d5327b699a0b072f4267ddb8b47fcd974994e28cda8e80cd"

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
