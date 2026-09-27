cask "roundhand" do
  version "0.2.2"
  sha256 "bb36fb9728f6cc1693293a073089d81a1add3a25053b94e0302252dacde3ab42"

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
