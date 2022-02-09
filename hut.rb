class Hut < Formula
  desc "A CLI tool for sr.ht"
  homepage "https://sr.ht/~emersion/hut/"
  head "https://git.sr.ht/~emersion/hut"
  license "APG-3.0-only"

  depends_on "go" => :build
  depends_on "scdoc" => :build

  def install
    ENV.prepend_path "PATH", Formula["coreutils"].libexec/"gnubin"
    system "make", "PREFIX=#{prefix}"
    system "make", "install", "PREFIX=#{prefix}"
  end
end
