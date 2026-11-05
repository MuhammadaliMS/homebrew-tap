cask "brink" do
  version "1.0.9"
  sha256 "42db9a8550ac0c090eb4869996eb5f64ecf09ff7ce6165b83cf82072586882a2"

  url "https://github.com/MuhammadaliMS/brink-releases/releases/download/v#{version}/Brink_#{version}_universal.dmg"
  name "Brink"
  desc "Turn your MacBook trackpad's edges into volume, brightness and media controls"
  homepage "https://zerowing.in/brink/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Brink.app"

  zap trash: [
    "~/Library/Application Support/in.zerowing.brink",
    "~/Library/Caches/in.zerowing.brink",
    "~/Library/Logs/in.zerowing.brink",
    "~/Library/Preferences/in.zerowing.brink.plist",
    "~/Library/WebKit/in.zerowing.brink",
  ]
end
