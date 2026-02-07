cask "viben" do
  version "0.1.1"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  url "https://github.com/LinXueyuanStdio/viben/releases/download/desktop-v#{version}/Viben_#{version}_universal.dmg"
  name "Viben"
  desc "Orchestrate AI agent clusters in your local workspace"
  homepage "https://github.com/LinXueyuanStdio/viben"

  livecheck do
    url :url
    strategy :github_latest do |json, regex|
      json["tag_name"]&.sub(/^desktop-v/, "")
    end
  end

  app "Viben.app"

  zap trash: [
    "~/Library/Application Support/com.viben.app",
    "~/Library/Caches/com.viben.app",
    "~/Library/Preferences/com.viben.app.plist",
    "~/Library/Saved Application State/com.viben.app.savedState",
  ]
end
