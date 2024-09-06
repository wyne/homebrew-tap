class Fasd < Formula
  desc "Command-line productivity booster, offers quick access to files and directories, inspired by autojump, z and v."
  homepage "https://github.com/wyne/fasd"
  url "https://github.com/wyne/fasd/archive/refs/tags/1.0.1.tar.gz"
  sha256 "d89cef0dbabb9891255d210146fc5699038e7d3ac9c0f872355689eb34d99974"
  license "MIT"
  head "https://github.com/wyne/fasd.git", branch: "main"

  def install
    bin.install "fasd"
    man1.install "fasd.1"
  end

  test do
    system "#{bin}/fasd", "--init", "auto"
  end
end
