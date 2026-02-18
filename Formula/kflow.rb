class Kflow < Formula
  desc "Like top for Kubernetes networking"
  homepage "https://github.com/AlexsJones/kflow"
  url "https://github.com/AlexsJones/kflow/archive/refs/tags/v0.0.9.tar.gz"
  sha256 "a899c626a8bc38aabdca29a1837106b0736f2954324db7a6bddd8482d9728e4f"
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
