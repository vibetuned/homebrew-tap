cask "midi-stroke" do
  version "1.1.1"
  sha256 "184aa2d32a03a2c39574a5e9a28a4e98a51829fd277bf368124821ed6884f546"

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
