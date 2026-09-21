cask "midi-sink" do
  version "1.0.0"
  sha256 "4bd344919c45df80d93212e02cfa3d7ffb3582bf0c0570b8716b9b656b9bb89f"

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
