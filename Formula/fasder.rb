class Fasder < Formula
  desc "Modern version of fasd productivity booster, offering quick access to files and directories"
  homepage "https://github.com/wyne/fasder"
  url "https://github.com/wyne/fasder/archive/refs/tags/0.1.5.tar.gz"
  sha256 "1cdfc08951af5a10c5df5c9566d4a44ebc0d16500596eda191f6c7fed9be555a"
  license "MIT"
  head "https://github.com/wyne/fasder.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
