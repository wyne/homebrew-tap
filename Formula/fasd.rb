class Tz < Formula
  desc "Command-line productivity booster, offers quick access to files and directories, inspired by autojump, z and v."
  homepage "https://github.com/wyne/fasd"
  url "https://github.com/wyne/fasd/archive/refs/tags/1.0.1.tar.gz"
  sha256 "d89cef0dbabb9891255d210146fc5699038e7d3ac9c0f872355689eb34d99974"
  license "GPL-3.0-or-later"
  head "https://github.com/wyne/fasd.git", branch: "main"

  def install
    system "make", "install"
  end
end
