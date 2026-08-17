cask "micpin" do
  version "1.1.0"
  sha256 "359376c626df707bf20cef867ae91632adab70b394a24f6d9a1735d895452d6c"

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
