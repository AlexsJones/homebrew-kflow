class Kflow < Formula
  desc "Like top for Kubernetes networking"
  homepage "https://github.com/AlexsJones/kflow"
  url "https://github.com/AlexsJones/kflow/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "83aa3cfcbf43539f8ce7400f5034f6faf006a37b904361616c72699bb5dac467"
  license "MIT"
  version "0.0.4"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "kflow", shell_output("#{bin}/kflow --help")
  end
end
