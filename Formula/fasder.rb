class Fasder < Formula
  desc "Modern version of fasd productivity booster, offering quick access to files and directories"
  homepage "https://github.com/wyne/fasder"
  url "https://github.com/wyne/fasder/archive/refs/tags/0.1.3.tar.gz"
  sha256 "2e79032147fab137e219cbf225305f45273c6593a38858176b67ce40acdb224f"
  license "MIT"
  head "https://github.com/wyne/fasder.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
