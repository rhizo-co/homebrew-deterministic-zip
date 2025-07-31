# Documentation: https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class DeterministicZip < Formula
    desc "Simple (almost drop-in) replacement for zip that produces deterministic files."
    url "https://github.com/rhizo-co/deterministic-zip/releases/download/4.0.1/deterministic-zip_darwin-amd64"
    sha256 "1dfece8f0eaf249c98267a525a6033f0d67064141fef17f9dfd2215646c71aa9"
    version "4.0.1"

    def install
        bin.install "deterministic-zip_darwin-amd64" => "deterministic-zip"
    end

    test do
      system "false"
    end
  end

