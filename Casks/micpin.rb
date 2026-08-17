cask "micpin" do
  version "1.2.0"
  sha256 "b82b2e27908d50e07380ad17e386933bbbb7e18aae2d05dfea4ec5677319443d"

  url "https://github.com/IamSwap/micpin/releases/download/v#{version}/MicPin-#{version}-universal.zip",
      verified: "github.com/IamSwap/micpin/"
  name "MicPin"
  desc "Keeps your chosen microphone as the default input"
  homepage "https://github.com/IamSwap/micpin"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "MicPin.app"

  uninstall quit:       "com.chitranu.micpin",
            login_item: "MicPin"

  zap trash: "~/Library/Preferences/com.chitranu.micpin.plist"
end
