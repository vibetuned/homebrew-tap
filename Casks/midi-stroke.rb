cask "midi-stroke" do
  version "0.0.2"
  sha256 "11e671621f4405d39107253a266892b2c3d992faa153cc42b74b5db0a4742b3a"

  url "https://github.com/vibetuned/midi-stroke/releases/download/v#{version}/Midi.Stroke_#{version}_universal.dmg"
  name "Midi Stroke"
  desc "MIDI training suite for piano, finger drums, saxophone and music theory"
  homepage "https://ms.vibetuned.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Midi Stroke.app"

  zap trash: [
    "~/Library/WebKit/dev.midistroke.app",
    "~/Library/Caches/dev.midistroke.app",
    "~/Library/Saved Application State/dev.midistroke.app.savedState",
  ]
end
