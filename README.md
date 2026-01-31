## Prerequisites

- macOS  
- [Homebrew](https://brew.sh) installed

Check Homebrew:

```bash
brew --version
```
If it’s not installed, follow the instructions on the Homebrew site.

## Installation on your Mac

1. **Tap your repository**

Replace `sergeyr87` if needed:

```bash
brew tap sergeyr87/tools
```
2. **Install the `mytools` formula**

```bash
brew install mytools
```
3. **Run the installer script**

This will install everything from the embedded `Brewfile`:

```bash
mytools-install
```
You should see:

- `🍺 Installing tools from Brewfile...`
- a series of `brew` / `cask` install lines
- `✅ Done!`

## What gets installed

**Taps**

- `hashicorp/tap`
- `astral-sh/tap`

**Formulae**

- `act`
- `argocd`
- `gh`
- `git-lfs`
- `gnupg`
- `helm`
- `asdf`
- `jq`
- `k9s`
- `kubectl`
- `kubectx`
- `kustomize`
- `multitail`
- `s3fs`
- `sshuttle`
- `swaks`
- `telnet`
- `astral-sh/tap/uv`
- `tree`
- `watch`
- `wget`
- `yarn`
- `ykman`
- `yq`
- `zsh`

**Casks**

- `visual-studio-code`
- `docker`
- `maccy`

## Updating

```bash
brew update
brew upgrade mytools
mytools-install
```