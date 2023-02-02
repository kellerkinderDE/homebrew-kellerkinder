class Expose < Formula
  desc "Create public URLs for local sites through any firewall and VPN. This is a Kellerkinder fork of https://github.com/beyondcode/expose"
  homepage "https://expose.dev"
  url "https://kellerkinder-staff.s3.eu-west-1.amazonaws.com/expose.phar"
  version "2.5.0-k10r"
  sha256 "2a4e0c99a996ee84ed292479c8d3b1a5afa2ef1cff3256964615590fb678711a"
  license "MIT"

  uses_from_macos "php"

  def install
    bin.install "expose.phar" => "expose"
  end

  test do
    assert_match(/share-cwd/, shell_output("#{bin}/expose -h"))
  end
end

