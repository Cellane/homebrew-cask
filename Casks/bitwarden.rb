cask "bitwarden" do
  version "1.24.1"
  sha256 "94683363fbc0166be17740727e72589033268723e9989a7e935b7758fce8e141"

  url "https://github.com/bitwarden/desktop/releases/download/v#{version}/Bitwarden-#{version}-mac.zip",
      verified: "github.com/bitwarden/desktop/"
  appcast "https://github.com/bitwarden/desktop/releases.atom"
  name "Bitwarden"
  desc "Desktop password and login vault"
  homepage "https://bitwarden.com/"

  auto_updates true

  app "Bitwarden.app"

  uninstall quit: [
    "com.bitwarden.desktop",
    "com.bitwarden.desktop.helper",
  ]

  zap trash: [
    "~/Library/Logs/Bitwarden",
    "~/Library/Application Support/Bitwarden",
    "~/Library/Caches/com.bitwarden.desktop",
    "~/Library/Caches/com.bitwarden.desktop.ShipIt",
    "~/Library/Preferences/ByHost/com.bitwarden.desktop.ShipIt.*.plist",
    "~/Library/Preferences/com.bitwarden.desktop.plist",
    "~/Library/Preferences/com.bitwarden.desktop.helper.plist",
    "~/Library/Saved Application State/com.bitwarden.desktop.savedState",
  ]
end
