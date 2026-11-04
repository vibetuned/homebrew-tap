cask "midi-stroke" do
  version "1.1.0"
  sha256 "476bd899879f845b96c6892480701b5e27fcb72ee991d472aeaf319780c465d7"

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
