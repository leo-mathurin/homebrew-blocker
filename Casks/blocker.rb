cask "blocker" do
  version "0.3.1"
  sha256 "5bfdab19f7e06697a8b81ff2e54edd719e1fb047d15bd6f6b64f90d30bba5146"

  url "https://github.com/leo-mathurin/blocker-releases/releases/download/v#{version}/blocker-#{version}.dmg",
      verified: "github.com/leo-mathurin/blocker-releases/"
  name "Blocker"
  desc "Minimal website blocker with recurring schedules"
  homepage "https://getblocker.app"

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
