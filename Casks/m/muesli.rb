cask "muesli" do
  version "0.6.2"
  sha256 "b0450269060a3e453b7866daccc261ffc17fe4f5c23c14cf9053e3d8ad07b097"

  url "https://github.com/pHequals7/muesli/releases/download/v#{version}/Muesli-#{version}.dmg",
      verified: "github.com/pHequals7/muesli/"
  name "Muesli"
  desc "Local-first dictation and meeting transcription"
  homepage "https://freedspeech.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Muesli.app"

  zap trash: [
    "~/.cache/muesli",
    "~/Library/Application Support/Muesli",
  ]
end
