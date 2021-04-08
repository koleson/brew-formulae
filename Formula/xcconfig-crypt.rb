class XcconfigCrypt < Formula
  desc "Symmetrically encrypt/decrypt .xcconfig files in a diffable fashion"
  homepage "https://github.com/koleson/xcconfig-crypt"
  url "https://github.com/koleson/xcconfig-crypt.git", tag: "0.1.8"
  license "MIT"
  head "https://github.com/koleson/xcconfig-crypt.git"

  bottle do
    root_url "https://github.com/koleson/homebrew-formulae/releases/download/xcconfig-crypt-0.1.7"
    sha256 cellar: :any_skip_relocation, catalina: "8f18ecef52cc90a8513823023ea137a6329e64e4f5a91408f53990d75008aa98"
  end

  depends_on xcode: ["12.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system bin/"xcconfig-crypt", "-h"
  end
end
