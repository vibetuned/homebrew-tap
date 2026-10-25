cask "midi-sink" do
  version "2.0.0"
  sha256 "802985bba4c8b8050e87608675fca81f115ce64f4be19bdb40e1895307964c43"

  url "https://github.com/vibetuned/midi-sink/releases/download/v#{version}/midi-sink-#{version}-macos-universal.dmg"
  name "midi-sink"
  desc "Suminagashi ink-marbling visualizer and MPE instrument driven by expressive MIDI"
  homepage "https://midi-sink.vibetuned.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "midi-sink.app"

  zap trash: [
    "~/Library/Application Support/midi-sink",
    "~/Library/Preferences/com.vibetuned.midi-sink.plist",
    "~/Library/Saved Application State/com.vibetuned.midi-sink.savedState",
  ]
end
