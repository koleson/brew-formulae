class XcconfigCrypt < Formula
  desc "Symmetrically encrypt/decrypt .xcconfig files in a diffable fashion"
  homepage "https://github.com/koleson/xcconfig-crypt"
  url "https://github.com/koleson/xcconfig-crypt.git", tag: "0.1.3"
  license "MIT"
  head "https://github.com/koleson/xcconfig-crypt.git"

  depends_on xcode: ["12.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system bin/"xcconfig-crypt", " -h"
  end
end
