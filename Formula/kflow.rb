class Kflow < Formula
  desc "Like top for Kubernetes networking"
  homepage "https://github.com/AlexsJones/kflow"
  url "https://github.com/AlexsJones/kflow/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "683549180c8c40bd7e5af101626f2dc65b41533d1e66008f2f02e1f6d322074f"
  license "MIT"
  version "0.0.3"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "kflow", shell_output("#{bin}/kflow --help")
  end
end
