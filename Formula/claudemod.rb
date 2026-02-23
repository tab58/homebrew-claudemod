# typed: false
# frozen_string_literal: true

class Claudemod < Formula
  desc "Workflow orchestrator for Claude Code that drives incremental feature delivery through structured, multi-phase development workflows."
  homepage "https://github.com/tab58/claudemod"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/tab58/claudemod/releases/download/v0.1.0/claudemod_0.1.0_darwin_amd64.tar.gz"
      sha256 "3396e77ec010ef8ff534979b9a5252459f212d804ef7049aba16ccfc9347c9a9"
    end

    on_arm do
      url "https://github.com/tab58/claudemod/releases/download/v0.1.0/claudemod_0.1.0_darwin_arm64.tar.gz"
      sha256 "cef1186a4d74a3da43798b43d1b1f58cf373e26d6065c09e0c183567b129d509"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tab58/claudemod/releases/download/v0.1.0/claudemod_0.1.0_linux_amd64.tar.gz"
      sha256 "fcef1ac4339299bb4426c2d794a849feaef11a97328d8c515df27a0137238706"
    end

    on_arm do
      url "https://github.com/tab58/claudemod/releases/download/v0.1.0/claudemod_0.1.0_linux_arm64.tar.gz"
      sha256 "23b632c9adae1672c5fffb69464345a7da67f84b64cba620e7221089dcb37c77"
    end
  end

  def install
    bin.install "claudemod"
  end

  test do
    system "#{bin}/claudemod", "version"
  end
end
