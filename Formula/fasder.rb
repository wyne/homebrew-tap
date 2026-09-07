class Fasder < Formula
  desc "Modern fasd-style quick access to files and directories"
  homepage "https://github.com/wyne/fasder"
  url "https://github.com/wyne/fasder/releases/download/0.1.7/fasder-0.1.7.tar.gz"
  sha256 "afa2bba06ff7fb1b2b83ec3cb087d974eb0e30d309ca24ec9635b60a0f0d57a2"
  license "MIT"
  head "https://github.com/wyne/fasder.git", branch: "main"

  bottle do
    root_url "https://github.com/wyne/homebrew-tap/releases/download/fasder-0.1.7"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "c50755dac918a73d8152fe6cbd893a627b204076f893de4b6654b2e989d008ed"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "6213bf9c79d4b352c01d635466c5198c24d0aea76de8fc14e1a7b671ac5059e6"
    sha256 cellar: :any,                 x86_64_linux:  "4c65a4f1878e07823e3e9e491a22d786145b533381e88a192c5473dac3e0edac"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
