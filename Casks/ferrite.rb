cask "ferrite" do
  version "0.3.0"

  if Hardware::CPU.arm?
    sha256 "b895a98931b2e37bca0fb2f0adb7fe5f81e1dd79d0e535387c92206f013e1e09"
    url "https://github.com/OlaProeis/Ferrite/releases/download/v#{version}/ferrite-macos-arm64.dmg"
  else
    sha256 "9af614bbb8c4002f17f0b524e1c298b4944c30aa8e91ff71ba0c2deed1a58bab"
    url "https://github.com/OlaProeis/Ferrite/releases/download/v#{version}/ferrite-macos-x64.dmg"
  end

  name "Ferrite"
  desc "Cross-platform markdown editor built in Rust"
  homepage "https://github.com/OlaProeis/Ferrite"

  app "Ferrite.app"

  zap trash: [
    "~/Library/Application Support/ferrite",
    "~/Library/Preferences/com.olaproeis.ferrite.plist",
  ]
end
