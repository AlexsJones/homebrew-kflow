class Kflow < Formula
  desc "Like top for Kubernetes networking"
  homepage "https://github.com/AlexsJones/kflow"
  url "https://github.com/AlexsJones/kflow/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "d4069f10f4325537d8cc81f84dbe24a61381eb9e2f508eb3a834ccfcd6b6a8e2"
  license "MIT"
  version "0.0.5"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "kflow", shell_output("#{bin}/kflow --help")
  end
end
