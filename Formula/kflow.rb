class Kflow < Formula
  desc "Like top for Kubernetes networking"
  homepage "https://github.com/AlexsJones/kflow"
  url "https://github.com/AlexsJones/kflow/archive/refs/tags/v0.0.9.tar.gz"
  sha256 "d487f6a1ec77dcc84a8ab147163cd7ab7da9eedb47776992a4b1edcddfb7f22d"
  license "MIT"
  version "0.0.9"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "kflow", shell_output("#{bin}/kflow --help")
  end
end
