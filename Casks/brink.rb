cask "brink" do
  version "1.0.6"
  sha256 "1e1039c5cecb4a5fbd8f6ce93efd23494ed44b6a0b62de9dbae2e021ccc246fd"

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
