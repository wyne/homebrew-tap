class Fasder < Formula
  desc "Modern fasd-style quick access to files and directories"
  homepage "https://github.com/wyne/fasder"
  url "https://github.com/wyne/fasder/releases/download/0.1.7/fasder-0.1.7.tar.gz"
  sha256 "afa2bba06ff7fb1b2b83ec3cb087d974eb0e30d309ca24ec9635b60a0f0d57a2"
  license "MIT"
  head "https://github.com/wyne/fasder.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
