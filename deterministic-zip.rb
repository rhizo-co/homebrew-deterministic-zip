# Documentation: https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class DeterministicZip < Formula
    desc "Simple (almost drop-in) replacement for zip that produces deterministic files."
    version "4.0.1"

    on_arm do
        url "https://github.com/rhizo-co/deterministic-zip/releases/download/4.0.1/deterministic-zip_darwin-arm64"
        sha256 "3d2e3169cbf8960b693abe45dd961ec18a250c3c68c4cbc9f0735aea5ffed622"
    end

    on_intel do
        url "https://github.com/rhizo-co/deterministic-zip/releases/download/4.0.1/deterministic-zip_darwin-amd64"
        sha256 "47742a9e76d04a9e6d4afecaa1aea8d12fc41170dceda0f5578ce3619a36e79b"
    end

    def install
        if Hardware::CPU.arm?
            bin.install "deterministic-zip_darwin-arm64" => "deterministic-zip"
        else
            bin.install "deterministic-zip_darwin-amd64" => "deterministic-zip"
        end
    end

    test do
      system "false"
    end
  end

