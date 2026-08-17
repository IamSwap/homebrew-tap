cask "micpin" do
  version "1.0.0"
  sha256 "144cb55f54ddb04c9c13d0f4d2009285472a8385ecc996062b43f6a332655b47"

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
