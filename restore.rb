class Restore < Formula
  desc "Interactive Git save point browser"
  homepage "https://github.com/LucasZNK/restore"
  url "https://github.com/LucasZNK/restore/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "61805022736a6134e3dfd8b31bfc8a52341fb65b31cd5e76e8d674cb8ed390eb"
  license "MIT"

  def install
    bin.install "restore"
  end

  test do
    # Test that the script exists and is executable
    assert_predicate bin/"restore", :exist?
    assert_predicate bin/"restore", :executable?
    
    # Test version flag
    assert_match "restore version 1.1.1", shell_output("#{bin}/restore --version")
  end
end