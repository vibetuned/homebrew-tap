cask "midi-stroke" do
  version "0.0.1"
  sha256 "d59fd82b50678dc4e06435e8c37c6c6d207bd43bc194cf7f81fc60b9c1e4f8d0"

  url "https://github.com/vibetuned/midi-stroke/releases/download/v#{version}/Midi.Stroke_#{version}_universal.dmg"
  name "Midi Stroke"
  desc "MIDI training suite for piano, finger drums, saxophone and music theory"
  homepage "https://ms.vibetuned.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Midi Stroke.app"

  zap trash: [
    "~/Library/Caches/dev.midistroke.app",
    "~/Library/Saved Application State/dev.midistroke.app.savedState",
    "~/Library/WebKit/dev.midistroke.app",
  ]
end
