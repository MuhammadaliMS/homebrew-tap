cask "brink" do
  version "1.0.0"
  sha256 "fcb07b5f1d58aef8198da0766b3abb0e4919cd151f095a318908a2e65e567839"

  url "https://github.com/MuhammadaliMS/brink-releases/releases/download/v#{version}/Brink_#{version}_universal.dmg",
      verified: "github.com/MuhammadaliMS/brink-releases/"
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
