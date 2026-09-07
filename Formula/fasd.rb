class Fasd < Formula
  desc "Command-line booster for quick access to files and directories"
  homepage "https://github.com/wyne/fasd"
  url "https://github.com/wyne/fasd/archive/refs/tags/1.0.1.tar.gz"
  sha256 "d89cef0dbabb9891255d210146fc5699038e7d3ac9c0f872355689eb34d99974"
  license "MIT"
  head "https://github.com/wyne/fasd.git", branch: "main"

  bottle do
    root_url "https://github.com/wyne/homebrew-tap/releases/download/fasd-1.0.1"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "ce3468c7dcb5f281b57a1241f68e7720da2da8528206c7b6fbf0afde5b30a64a"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "6bdb8fcbed9b392d39c8411c5d6f9feeb8fb23933619133e07ee45a1301111ae"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "268263f4b865f8ee608aa4a0745d730566c7c5ab0561619a6adf7f1354a39699"
  end

  def install
    bin.install "fasd"
    man1.install "fasd.1"
  end

  test do
    system "#{bin}/fasd", "--init", "auto"
  end
end
