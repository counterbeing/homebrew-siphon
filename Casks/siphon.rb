cask "siphon" do
  version "0.1.0-1027"
  sha256 "c0f3b4480d707607d6dcab508d6de4887ed1fc8bef3f72e45a28484e4acd6b71"

  url "https://download.siphon.watch/Siphon-#{version}.dmg"
  name "Siphon"
  desc "Voice capture from Apple Watch Ultra to the AI agent on your Mac"
  homepage "https://siphon.watch/"

  livecheck do
    url "https://download.siphon.watch/latest-mac.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "Siphon.app"

  uninstall launchctl: "watch.siphon.background",
            quit:      "watch.siphon.desktop"

  zap trash: [
    "~/.local/share/siphon",
    "~/Library/Application Support/Siphon",
    "~/Library/Logs/Siphon",
  ]
end
