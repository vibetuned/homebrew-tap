cask "midi-sink" do
  version "2.0.0-rc.5"
  sha256 "e27de8bb4406b660066c6a0e3dbef45f07a2a92d73b27acaf0a5f9d8e2f100b6"

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
