class Expose < Formula
  desc "Create public URLs for local sites through any firewall and VPN. This is a Kellerkinder fork of https://github.com/beyondcode/expose"
  homepage "https://expose.dev"
  url "https://kellerkinder-staff.s3.eu-west-1.amazonaws.com/expose.phar"
  version "2.0.2-k10r"
  sha256 "f555130bb2519dc180cac6b19c44047e19bddeb10ccf62a79682031eb1646067"
  license "MIT"

  uses_from_macos "php"

  def install
    bin.install "expose.phar" => "expose"
  end

  test do
    assert_match(/share-cwd/, shell_output("#{bin}/expose -h"))
  end
end

