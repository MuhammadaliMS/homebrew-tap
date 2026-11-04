cask "brink" do
  version "1.0.2"
  sha256 "962d400dbdaf08ef09d4dafbe78d5111ac69711ac30228e615c1f18eaf08541b"

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
