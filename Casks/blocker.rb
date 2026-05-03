cask "blocker" do
  version "0.4.0"
  sha256 "2d9582503803068627a5864f3188aa5a90dbb0f64b14811e334bf0fe1f551016"

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
