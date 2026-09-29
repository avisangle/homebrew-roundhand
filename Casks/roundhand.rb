cask "roundhand" do
  version "0.2.5"
  sha256 "dbd2bdae817cb765b332b7691b6e3ded1111378187602f8a35a599f9aa2f62e7"

  url "https://github.com/avisangle/roundhand-releases/releases/download/v#{version}/Roundhand-#{version}.dmg",
      verified: "github.com/avisangle/roundhand-releases/"
  name "Roundhand"
  desc "Dictation that writes text shaped for the app you are in"
  homepage "https://roundhand.dev/"

  livecheck do
    url "https://updates.roundhand.dev/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Roundhand.app"

  zap trash: [
    "~/Library/Application Support/Roundhand",
    "~/Library/Caches/com.roundhand.app",
    "~/Library/Caches/com.roundhand.app.sparkle",
    "~/Library/HTTPStorages/com.roundhand.app",
    "~/Library/HTTPStorages/com.roundhand.app.binarycookies",
    "~/Library/Logs/Roundhand",
    "~/Library/Preferences/com.roundhand.app.plist",
  ]
end
