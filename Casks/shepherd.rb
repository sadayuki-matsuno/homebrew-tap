cask "shepherd" do
  version "0.0.5"
  sha256 "600b423822d2f668195cf7817889df7dcd9925bea6efa3cdf5f60c9fdca8eac0"

  url "https://github.com/sadayuki-matsuno/shepherd/releases/download/v#{version}/Shepherd-#{version}.zip",
      verified: "github.com/sadayuki-matsuno/shepherd/"
  name "Shepherd"
  desc "Floating, always-on-top HUD for Claude Code sessions"
  homepage "https://sadayuki-matsuno.github.io/shepherd/"

  depends_on :macos

  app "Shepherd.app"

  caveats <<~EOS
    Shepherd is ad-hoc signed (no Apple Developer ID yet), so macOS may block
    the first launch. Either right-click Shepherd.app -> Open once, or install
    with the quarantine flag disabled:

      brew install --cask --no-quarantine sadayuki-matsuno/tap/shepherd

    Building from source avoids this entirely: https://github.com/sadayuki-matsuno/shepherd
  EOS
end
