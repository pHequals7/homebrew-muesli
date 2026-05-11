cask "muesli" do
  version "0.6.7"
  sha256 "05796e641dae78ce1a6ee6dbfacd8621f0cf6c226f1e8c5815a8c96eff7aa5bf"

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
