# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class YamlDocs < Formula
  desc "Automatically generate markdown documentation for YAML configuration files"
  homepage "https://github.com/blakyaks/yaml-docs"
  version "0.0.7"

  on_macos do
    on_intel do
      url "https://github.com/blakyaks/yaml-docs/releases/download/v0.0.7/yaml-docs_0.0.7_Darwin_x86_64.tar.gz"
      sha256 "cd90a5bb97cd42160e189b6301d8767ffeb22362b83de2a983948d24e0f24d01"

      def install
        bin.install "yaml-docs"
      end
    end
    on_arm do
      url "https://github.com/blakyaks/yaml-docs/releases/download/v0.0.7/yaml-docs_0.0.7_Darwin_arm64.tar.gz"
      sha256 "5a22c19ab141cb12a57d8e92854ffe19bc7110fd7d593aa1de4116c4c1c5fc3c"

      def install
        bin.install "yaml-docs"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/blakyaks/yaml-docs/releases/download/v0.0.7/yaml-docs_0.0.7_Linux_x86_64.tar.gz"
        sha256 "fa24dbbb84eda485ad789107773813985492e4a958d59aaaaafc7ade175a5cc0"

        def install
          bin.install "yaml-docs"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/blakyaks/yaml-docs/releases/download/v0.0.7/yaml-docs_0.0.7_Linux_arm6.tar.gz"
        sha256 "dcb93fc08cd4ba87dc9106f2840d1c02bd650804b012a3f75e6743e4bad32587"

        def install
          bin.install "yaml-docs"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/blakyaks/yaml-docs/releases/download/v0.0.7/yaml-docs_0.0.7_Linux_arm64.tar.gz"
        sha256 "b4e93537356ec2bd82abe5b3296f345cc92b9d538d86834b33630c605dedc620"

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
