cask "shepherd" do
  version "0.0.1"
  sha256 "88d65bbf90e062717daeba30fdbc4d76e13d03fbb479274e6f60a947dc9759d9"

  url "https://github.com/sadayuki-matsuno/shepherd/releases/download/v#{version}/Shepherd-#{version}.zip"
  name "Shepherd"
  desc "Floating, always-on-top HUD for Claude Code sessions"
  homepage "https://sadayuki-matsuno.github.io/shepherd/"

  depends_on macos: ">= :ventura"

  app "Shepherd.app"

  caveats <<~EOS
    Shepherd is ad-hoc signed (no Apple Developer ID yet), so macOS may block
    the first launch. Either right-click Shepherd.app -> Open once, or install
    with the quarantine flag disabled:

      brew install --cask --no-quarantine sadayuki-matsuno/tap/shepherd

    Building from source avoids this entirely: https://github.com/sadayuki-matsuno/shepherd
  EOS
end
