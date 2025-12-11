class Kflow < Formula
  desc "Like top for Kubernetes networking"
  homepage "https://github.com/AlexsJones/kflow"
  url "https://github.com/AlexsJones/kflow/archive/refs/tags/v0.0.7.tar.gz"
  sha256 "a8ae8787cd1c70948672a6f01a63ec4c06bf1cef53a4ab64ad0338e3aa74f1b9"
  license "MIT"
  version "0.0.7"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "kflow", shell_output("#{bin}/kflow --help")
  end
end
