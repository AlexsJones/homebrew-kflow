class Kflow < Formula
  desc "Like top for Kubernetes networking"
  homepage "https://github.com/AlexsJones/kflow"
  url "https://github.com/AlexsJones/kflow/archive/refs/tags/v0.0.8.tar.gz"
  sha256 "5dd3c2fe3d7ef503afc6739ba08eec02d5f5a6450f0308b019ebe84f8e114c68"
  license "MIT"
  version "0.0.8"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "kflow", shell_output("#{bin}/kflow --help")
  end
end
