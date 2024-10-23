# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class YamlDocs < Formula
  desc "Automatically generate markdown documentation for YAML configuration files"
  homepage "https://github.com/blakyaks/yaml-docs"
  version "0.0.9"

  on_macos do
    on_intel do
      url "https://github.com/blakyaks/yaml-docs/releases/download/v0.0.9/yaml-docs_0.0.9_Darwin_x86_64.tar.gz"
      sha256 "0b37e80b23d976d90dcae6fbd2f4ca06fc374364b181b4d6ed95fedb4a460ab1"

      def install
        bin.install "yaml-docs"
      end
    end
    on_arm do
      url "https://github.com/blakyaks/yaml-docs/releases/download/v0.0.9/yaml-docs_0.0.9_Darwin_arm64.tar.gz"
      sha256 "4696589eb78c6dc38b169b47d745b267eccd34426e57893f34b64152aacb0353"

      def install
        bin.install "yaml-docs"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/blakyaks/yaml-docs/releases/download/v0.0.9/yaml-docs_0.0.9_Linux_x86_64.tar.gz"
        sha256 "5fb2cf67a03ede6cfa41d3acdbab552c7f4a50689a20ab1c5b50226a8954d6e2"

        def install
          bin.install "yaml-docs"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/blakyaks/yaml-docs/releases/download/v0.0.9/yaml-docs_0.0.9_Linux_arm6.tar.gz"
        sha256 "8057daff132a4922ec35feb1cdd60b5450aed36251734743989e742fd871f52b"

        def install
          bin.install "yaml-docs"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/blakyaks/yaml-docs/releases/download/v0.0.9/yaml-docs_0.0.9_Linux_arm64.tar.gz"
        sha256 "2326635c264a7c6144106768ecac8328be436a13c2d14282aaecdf32648b707b"

        def install
          bin.install "yaml-docs"
        end
      end
    end
  end

  test do
    system "#{bin}/yaml-docs --version"
  end
end
