class Kflow < Formula
  desc "Like top for Kubernetes networking"
  homepage "https://github.com/AlexsJones/kflow"
  url "https://github.com/AlexsJones/kflow/archive/refs/tags/v0.0.9.tar.gz"
  sha256 "ca5993a8d2c1c73a60f21177cbe914509608ab13d22b8e1f2af874763217f4d4"
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
