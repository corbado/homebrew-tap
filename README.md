# Corbado Homebrew tap

The official [Homebrew](https://brew.sh) tap and binary downloads for the **Corbado Observe CLI**, a command-line client for exploring authentication analytics in Corbado Observe.

## Install on Linux

For Linux x64 or arm64 with glibc, install the latest release into `~/.local`:

```sh
curl -fsSL https://raw.githubusercontent.com/corbado/homebrew-tap/main/install.sh | bash
```

Pin a version for automated environments:

```sh
curl -fsSL https://raw.githubusercontent.com/corbado/homebrew-tap/main/install.sh | bash -s -- 1.0.1
```

The installer detects the architecture, downloads the matching public release archive,
verifies its SHA-256 checksum, and places `corbado` in `~/.local/bin`. It does not need
Bun, Node.js, or root access. Set `CORBADO_INSTALL` to an absolute directory to change
the install root. Ensure its `bin` directory is on `PATH`.

For VM or agent use, supply `CORBADO_API_KEY`, `CORBADO_API_BASE_URL`, and
`CORBADO_PROJECT_ID` through the environment. The installer does not configure credentials.

## Install on macOS

On **Apple Silicon macOS**, with Homebrew installed and its shell setup completed, run:

```sh
brew install --cask corbado/tap/corbado
```

Homebrew makes `corbado` available on PATH and installs `jq` for JSON filtering.
The CLI is a signed, notarized standalone executable; no Bun or Node.js installation
is needed. Intel macOS and Windows are not currently supported.

## Upgrade

```sh
brew update
brew upgrade --cask corbado/tap/corbado
```

If you previously installed the Homebrew formula, run `brew uninstall --formula corbado`
once before installing the cask. Your project configuration and stored credentials
are preserved.

## Get started

```sh
corbado --help
corbado guide
```

Use `corbado schema` for machine-readable command documentation.

## Downloads and release notes

See the [latest release](https://github.com/corbado/homebrew-tap/releases/latest) for standalone downloads, checksums, and release notes, or browse [all releases](https://github.com/corbado/homebrew-tap/releases).

This repository contains distribution packages. The CLI source is maintained separately.
