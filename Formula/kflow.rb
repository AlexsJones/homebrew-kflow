class Kflow < Formula
  desc "Like top for Kubernetes networking"
  homepage "https://github.com/AlexsJones/kflow"
  url "https://github.com/AlexsJones/kflow/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "sha256:08c6be2884ce74319b5fe48388323dd07e1a54e65a931321cc70a71df4501cd4"
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
