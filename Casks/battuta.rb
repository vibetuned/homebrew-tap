cask "battuta" do
  version "0.0.2"
  sha256 "b437d9648995d79403f74c4c502acfdc26799f16f2553facee97d17f57aad13e"

  url "https://github.com/vibetuned/battuta/releases/download/v#{version}/battuta_#{version}_universal.dmg"
  name "battuta"
  desc "Local-first MEI score editor"
  homepage "https://battuta.vibetuned.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "battuta.app"

  zap trash: [
    "~/Library/Caches/dev.battuta.editor",
    "~/Library/Saved Application State/dev.battuta.editor.savedState",
    "~/Library/WebKit/dev.battuta.editor",
  ]
end
