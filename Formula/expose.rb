class Expose < Formula
  desc "Create public URLs for local sites through any firewall and VPN. This is a Kellerkinder fork of https://github.com/beyondcode/expose"
  homepage "https://expose.dev"
  url "https://kellerkinder-staff.s3.eu-west-1.amazonaws.com/expose.phar"
  version "2.5.0-k10r"
  sha256 "e9698a16380217acdb9aa6a8c7fb0caa9c820a4554991b73de6f9988ab45e292"
  license "MIT"

  uses_from_macos "php"

  def install
    bin.install "expose.phar" => "expose"
  end

  test do
    assert_match(/share-cwd/, shell_output("#{bin}/expose -h"))
  end
end

