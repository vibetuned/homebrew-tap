cask "battuta" do
  version "1.0.0"
  sha256 "fb4dc74304901e9284d0cbf8cf5b3673ccd11b6a39ed2de4b0a013f698441271"

  url "https://github.com/vibetuned/battuta/releases/download/v#{version}/battuta_#{version}_universal.dmg"
  name "battuta"
  desc "Local-first MEI score editor"
  homepage "https://battuta.vibetuned.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "battuta.app"

  zap trash: [
    "~/Library/WebKit/dev.battuta.editor",
    "~/Library/Caches/dev.battuta.editor",
    "~/Library/Saved Application State/dev.battuta.editor.savedState",
  ]
end
