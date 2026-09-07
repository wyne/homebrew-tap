class Fasderbeta < Formula
  desc "Modern fasd-style quick access to files and directories"
  homepage "https://github.com/wyne/fasder"
  url "https://github.com/wyne/fasder/releases/download/0.1.6/fasder-0.1.6.tar.gz"
  sha256 "155704dc6aa87ab7f99e6c1b15ca2b15051e8126f5897acd8422e0d8c9913e45"
  license "MIT"
  head "https://github.com/wyne/fasder.git", branch: "main"

  bottle do
    root_url "https://github.com/wyne/homebrew-tap/releases/download/fasderbeta-0.1.6"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e66907cb7e0d404b8e6c724fa976659851c38c62980bbb2e6e7a0c099a4ca1fe"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "1d31bb89a162135b6c90c28539497696358ffaebc9f55c76f6b7825bbaf997c5"
    sha256 cellar: :any,                 x86_64_linux:  "3a625b37e77aedcea49630135b6b835528440fb2c8d4acdd986a8ec8cb2f2493"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
