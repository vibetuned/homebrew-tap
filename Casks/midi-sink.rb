cask "midi-sink" do
  version "0.5.0-rc.2"
  sha256 "95c7ef124369245fb2610daae62da17753eac4f28c8d854cea5f9d0c373e2474"

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
