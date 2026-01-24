class Mytools < Formula
  desc "My personal development tools installer"
  homepage "https://github.com/sergeyr87/homebrew-tools"
  url "https://github.com/sergeyr87/homebrew-tools/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "CALCULATED_SHA256_HASH"
  version "1.0.0"

  def install
    # Install the Brewfile to a known location
    (prefix/"Brewfile").write <<~EOS
      tap "hashicorp/tap"
      
      brew "git"
      brew "terraform"
      brew "terragrunt"
      brew "kubectl"
      brew "helm"
      brew "awscli"
      brew "azure-cli"
      brew "jq"
      brew "yq"
      brew "argocd"
      brew "k9s"
      brew "stern"
      brew "kubectx"
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