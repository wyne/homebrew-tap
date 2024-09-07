class Fasder < Formula
  desc "Modern version of fasd productivity booster, offering quick access to files and directories"
  homepage "https://github.com/wyne/fasder"
  url "https://github.com/wyne/fasder/archive/refs/tags/0.1.1.tar.gz"
  sha256 "79882f430500e8b455508fbcdf6803ed8336d0676d5f1aebbd031039b7ee61b6"
  license "MIT"
  head "https://github.com/wyne/fasder.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
