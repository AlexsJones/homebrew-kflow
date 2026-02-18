class Kflow < Formula
  desc "Like top for Kubernetes networking"
  homepage "https://github.com/AlexsJones/kflow"
  url "https://github.com/AlexsJones/kflow/archive/refs/tags/v0.0.9.tar.gz"
  sha256 "ba5efa586f8766a4bf95fed3838019e75feacbbc0182a4c4e1623e079e2d540b"
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
