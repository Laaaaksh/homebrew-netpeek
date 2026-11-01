# frozen_string_literal: true

cask "netpeek" do
  version "0.1.0"
  sha256 "4d7a7a330f7d3fbc50f9df5365589604b1c04a45699e302818f4191ebbbf2617"

  url "https://github.com/Laaaaksh/netpeek/releases/download/v#{version}/Netpeek-#{version}-macos-universal.zip"
  name "Netpeek"
  desc "Live per-process bandwidth monitor"
  homepage "https://github.com/Laaaaksh/netpeek"

  depends_on macos: :monterey

  app "Netpeek.app"

  zap trash: [
    "~/Library/Application Support/com.netpeek.desktop",
    "~/Library/Caches/com.netpeek.desktop",
    "~/Library/HTTPStorages/com.netpeek.desktop",
    "~/Library/Preferences/com.netpeek.desktop.plist",
    "~/Library/Saved Application State/com.netpeek.desktop.savedState",
    "~/Library/WebKit/com.netpeek.desktop",
  ]
end
