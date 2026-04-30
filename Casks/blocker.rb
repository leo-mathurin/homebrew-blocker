cask "blocker" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "492445638b74ebca680e3cf3982bd37c663028cbc03685dcc2151b91f46865f1",
         intel: "50c7711a94ff4f1611f12ce92a534fb2ee400b652e279c7282b4b01f07a7fcab"

  url "https://github.com/leo-mathurin/blocker-releases/releases/download/v#{version}/blocker-#{version}-#{arch}.dmg",
      verified: "github.com/leo-mathurin/blocker-releases/"
  name "Blocker"
  desc "Minimal website blocker with recurring schedules"
  homepage "https://github.com/leo-mathurin/homebrew-blocker"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: ">= :monterey"

  app "Blocker.app"

  zap trash: [
    "~/Library/Application Support/Blocker",
    "~/Library/Logs/Blocker",
    "~/Library/Preferences/com.leomathurin.blocker.plist",
    "~/Library/Saved Application State/com.leomathurin.blocker.savedState",
  ]
end
