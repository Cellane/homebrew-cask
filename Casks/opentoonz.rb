cask "opentoonz" do
  version "1.4.0"
  sha256 "dbb4d961fb7ff4cd3200faaa7de00e10f220e6ccfca430c61d409bbfc100950d"

  url "https://github.com/opentoonz/opentoonz/releases/download/v#{version}/OpenToonz.pkg",
      verified: "github.com/opentoonz/opentoonz/"
  appcast "https://github.com/opentoonz/opentoonz/releases.atom"
  name "OpenToonz"
  desc "Open-source full-featured 2D animation creation software"
  homepage "https://opentoonz.github.io/e/index.html"

  pkg "OpenToonz.pkg"

  uninstall pkgutil: "io.github.opentoonz"
end
