cask "battuta" do
  version "1.2.0"
  sha256 "dba4f47c879213122d3b05da27815c49b51b8ed670897de2b8880c369a7a2014"

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
    "~/Library/WebKit/com.vibetuned.battuta",
    "~/Library/Caches/com.vibetuned.battuta",
    "~/Library/Saved Application State/com.vibetuned.battuta.savedState",
    "~/Library/WebKit/dev.battuta.editor",
    "~/Library/Caches/dev.battuta.editor",
    "~/Library/Saved Application State/dev.battuta.editor.savedState",
  ]
end
