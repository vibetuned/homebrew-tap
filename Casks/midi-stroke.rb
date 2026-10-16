cask "midi-stroke" do
  version "1.0.1"
  sha256 "13cffb7d74f29536b958560a0e4a84c945bb14b0a84f90b31bf7f4cca866477d"

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
