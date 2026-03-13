class Td < Formula
  desc "Minimal task and session manager for agentic coding"
  homepage "https://github.com/rosgoo/td"
  url "https://github.com/rosgoo/td/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "fd7ada0eefa63f07789438ad3c441dac0ac9f3bfee431dd629746f0ef3d7747c"
  depends_on "jq"
  depends_on "fzf"
  depends_on "gum"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "td #{version}", shell_output("#{bin}/td version")
  end
end
