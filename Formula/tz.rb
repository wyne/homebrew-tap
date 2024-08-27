class Tz < Formula
  desc "CLI time zone visualizer - forked from oz/tz"
  homepage "https://github.com/wyne/tz"
  url "https://github.com/wyne/tz/archive/refs/tags/0.8.1.tar.gz"
  sha256 "1a7e2cd1df0d4d095bf2b17b651a623e1f1e8b7511cafcaa5f4d298854578e1f"
  license "GPL-3.0-or-later"
  head "https://github.com/wyne/tz.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "US/Eastern", shell_output("#{bin}/tz --list")

    assert_match version.to_s, shell_output("#{bin}/tz -v")
  end
end
