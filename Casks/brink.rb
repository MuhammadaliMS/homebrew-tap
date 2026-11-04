cask "brink" do
  version "1.0.1"
  sha256 "43935dc52eb9c76eb2c992fc65a509cc3ca6b8a7478bf3f295c0f43d576337d5"

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
