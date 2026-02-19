class Kflow < Formula
  desc "Like top for Kubernetes networking"
  homepage "https://github.com/AlexsJones/kflow"
  url "https://github.com/AlexsJones/kflow/archive/refs/tags/v0.0.10.tar.gz"
  sha256 "3d21048f568f99e77cf53fd1aed5b3bd31efd4b7c30064efa38dea36979ddcb0"
  license "MIT"
  version "0.0.10"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "kflow", shell_output("#{bin}/kflow --help")
  end
end
