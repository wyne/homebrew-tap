class Tz < Formula
  desc "CLI time zone visualizer - forked from oz/tz"
  homepage "https://github.com/wyne/tz"
  url "https://github.com/wyne/tz/archive/refs/tags/0.8.0.tar.gz"
  sha256 "5ad0d5787339ef950c17989071fea48ef8da4e9a52296178a365ac14915513a9"
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
