class Tz < Formula
  desc "CLI time zone visualizer - forked from oz/tz"
  homepage "https://github.com/wyne/tz"
  url "https://github.com/wyne/tz/archive/refs/tags/0.9.0.tar.gz"
  sha256 "cd6ec14866ef911f2fb0266dea3ab3d3263eeec226122c26cda0c920660ebf47"
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
