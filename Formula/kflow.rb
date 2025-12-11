class Kflow < Formula
  desc "Like top for Kubernetes networking"
  homepage "https://github.com/AlexsJones/kflow"
  url "https://github.com/AlexsJones/kflow/archive/refs/tags/v0.0.6.tar.gz"
  sha256 "078e5c6d7b6a44418ba0defac6fad17308f895ed998cdbb23b1602481f7df38f"
  license "MIT"
  version "0.0.6"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "kflow", shell_output("#{bin}/kflow --help")
  end
end
