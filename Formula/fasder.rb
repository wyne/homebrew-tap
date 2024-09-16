class Fasder < Formula
  desc "Modern version of fasd productivity booster, offering quick access to files and directories"
  homepage "https://github.com/wyne/fasder"
  url "https://github.com/wyne/fasder/releases/download/0.1.6/fasder-0.1.6.tar.gz"
  sha256 "155704dc6aa87ab7f99e6c1b15ca2b15051e8126f5897acd8422e0d8c9913e45"
  license "MIT"
  head "https://github.com/wyne/fasder.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
