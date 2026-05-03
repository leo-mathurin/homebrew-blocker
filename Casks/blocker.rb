cask "blocker" do
  version "0.3.3"
  sha256 "ce155a4dbcaa21e5d6fb810ae87fdf994548f88b53783c31ab958d7942d5df0f"

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
