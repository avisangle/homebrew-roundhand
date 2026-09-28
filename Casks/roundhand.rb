cask "roundhand" do
  version "0.2.3"
  sha256 "68338a4a4fa8211aaf14faa6dccd5155689c3b5cd265c7880c9e4421a9d96989"

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
