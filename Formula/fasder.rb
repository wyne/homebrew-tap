class Fasder < Formula
  desc "Modern version of fasd productivity booster, offering quick access to files and directories"
  homepage "https://github.com/wyne/fasder"
  url "https://github.com/wyne/fasder/archive/refs/tags/0.1.6.tar.gz"
  sha256 "26db2ba2e5b6abeede2d9deceb005752eac725c7996b8aea5bac23457432a543"
  license "MIT"
  head "https://github.com/wyne/fasder.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
