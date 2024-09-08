class Fasder < Formula
  desc "Modern version of fasd productivity booster, offering quick access to files and directories"
  homepage "https://github.com/wyne/fasder"
  url "https://github.com/wyne/fasder/archive/refs/tags/0.1.2.tar.gz"
  sha256 "809c79aa03392613090ad9bc6b6c05f377a1f6e7f32469b608f2b3ec9c3bd02e"
  license "MIT"
  head "https://github.com/wyne/fasder.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
