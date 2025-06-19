class Restore < Formula
  desc "Interactive Git save point browser"
  homepage "https://github.com/LucasZNK/restore"
  url "https://github.com/LucasZNK/restore/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "2ab497ca168e9c68189771189df11bdfdf9458085db5fe24d46154c86127bfad"
  license "MIT"

  def install
    bin.install "restore"
  end

  test do
    # Test that the script exists and is executable
    assert_predicate bin/"restore", :exist?
    assert_predicate bin/"restore", :executable?
  end
end