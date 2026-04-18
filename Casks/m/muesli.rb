cask "muesli" do
  version "0.5.6"
  sha256 "7066cc2d8d36fca2716cf02ec38f756a00fbc71bf4f9698af9f0344b7fc6eaff"

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
