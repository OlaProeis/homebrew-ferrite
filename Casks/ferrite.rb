cask "ferrite" do
  version "0.2.7"

  if Hardware::CPU.arm?
    sha256 "34a53c3e5140a4fd2633fbb368448fb87431efa3a8855624c19d96b58e6fc888"
    url "https://github.com/OlaProeis/Ferrite/releases/download/v#{version}/ferrite-macos-arm64.dmg"
  else
    sha256 "9a69f537b0ab84c095f16d112e70dc43a4569e3080ef823abe17b1daf4e84682"
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
