class XcconfigCrypt < Formula
  desc "Symmetrically encrypt/decrypt .xcconfig files in a diffable fashion"
  homepage "https://github.com/koleson/xcconfig-crypt"
  url "https://github.com/koleson/xcconfig-crypt.git", tag: "0.1.8"
  license "MIT"
  head "https://github.com/koleson/xcconfig-crypt.git"

  bottle do
    root_url "https://github.com/koleson/homebrew-formulae/releases/download/xcconfig-crypt-0.1.8"
    sha256 cellar: :any_skip_relocation, catalina: "d106d6630d90e78e6f2abbcdeaabfe230811b0332011278f4e134d5aee89474e"
  end

  depends_on xcode: ["12.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system bin/"xcconfig-crypt", "-h"
  end
end
