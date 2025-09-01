class AutomateSwiftuiAccessibility < Formula
  desc "CLI for SwiftUI accessibility automation"
  homepage "https://github.com/Sankalp-Bisht/SwiftUI-Accessibility-Automation"
  version "1.0"

  url "https://github.com/Sankalp-Bisht/SwiftUI-Accessibility-Automation/releases/download/1.0/swiftui-acc-arm64"
  sha256 "6ca44da3cc255c3633ce2045cedefe6c554924120934de976639b7f8076d01cd"

  def install
    bin.install "swiftui-acc-arm64" => "swiftui-acc"
    chmod 0555, bin/"swiftui-acc"
  end

  test do
    assert_match "--help", shell_output("#{bin}/swiftui-acc --help")
  end
end
