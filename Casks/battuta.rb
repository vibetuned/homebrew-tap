cask "battuta" do
  version "1.3.0"
  sha256 "38a89b51bfeced64f0b94a96a346836bd1c03b8f04fe2a904ad8248c11d0b139"

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
