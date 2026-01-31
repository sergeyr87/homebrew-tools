class Mytools < Formula
  desc "My personal development tools installer"
  homepage "https://github.com/sergeyr87/homebrew-tools"
  url "https://github.com/sergeyr87/homebrew-tools/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "1f55a3fed05a3d82a8f47e269abc3a049f1e5a9de1cdc74588ff42f21120c69b"
  version "1.0.0"

  def install
    # Install the Brewfile to a known location
    (prefix/"Brewfile").write <<~EOS
      tap "hashicorp/tap"
      tap "astral-sh/tap"

      brew "act"
      brew "argocd"
      brew "gh"
      brew "git-lfs"
      brew "gnupg"
      brew "helm"
      brew "asdf"
      brew "jq"
      brew "k9s"
      brew "kubectl"
      brew "kubectx"
      brew "kustomize"
      brew "multitail"
      brew "s3fs"
      brew "sshuttle"
      brew "telnet"
      brew "astral-sh/tap/uv"
      brew "tree"
      brew "watch"
      brew "wget"
      brew "yarn"
      brew "ykman"
      brew "yq"
      brew "zsh"

      cask "visual-studio-code"
      cask "docker"
      cask "maccy"
    EOS

    # Create wrapper script
    (bin/"mytools-install").write <<~EOS
      #!/bin/bash
      echo "🍺 Installing tools from Brewfile..."
      brew bundle install --file=#{prefix}/Brewfile
      echo "✅ Done!"
    EOS
  end

  def caveats
    <<~EOS
      Run the following to install all tools:
        mytools-install
    EOS
  end
end
