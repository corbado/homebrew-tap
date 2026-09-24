#!/usr/bin/env bash
set -euo pipefail

error() {
  printf 'error: %s\n' "$*" >&2
  exit 1
}

if [[ $# -gt 1 ]]; then
  error 'Pass at most one version, for example: bash install.sh 1.0.1'
fi

for tool in curl tar sha256sum mktemp install; do
  command -v "$tool" >/dev/null || error "$tool is required"
done

[[ $(uname -s) == Linux ]] || error 'This installer supports Linux only; use the Homebrew cask on macOS'
case "$(uname -m)" in
  x86_64) target=linux-x64 ;;
  aarch64 | arm64) target=linux-arm64 ;;
  *) error "Unsupported Linux architecture: $(uname -m)" ;;
esac
[[ ! -f /etc/alpine-release ]] || error 'Alpine Linux is not supported; these binaries require glibc'

repo=https://github.com/corbado/homebrew-tap
if [[ $# -eq 0 ]]; then
  latest=$(curl -fsSL -o /dev/null -w '%{url_effective}' "$repo/releases/latest") || error 'Could not resolve the latest release'
  version=${latest##*/}
else
  version=$1
fi
version=${version#v}
[[ $version =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]] || error "Invalid release version: $version"

install_root=${CORBADO_INSTALL:-$HOME/.local}
[[ $install_root = /* ]] || error 'CORBADO_INSTALL must be an absolute path'
bin_dir=$install_root/bin
version_dir=$install_root/share/corbado/$version
archive=corbado-$version-$target.tar.gz
base=$repo/releases/download/v$version

temporary=$(mktemp -d)
trap 'rm -rf "$temporary"' EXIT
curl -fL --retry 3 --progress-bar -o "$temporary/$archive" "$base/$archive" || error "Could not download $archive"
curl -fL --retry 3 --progress-bar -o "$temporary/SHA256SUMS" "$base/SHA256SUMS" || error 'Could not download SHA256SUMS'

expected=$(awk -v name="$archive" '$2 == name { print $1 }' "$temporary/SHA256SUMS")
[[ $expected =~ ^[0-9a-f]{64}$ ]] || error "Missing or invalid checksum for $archive"
actual=$(sha256sum "$temporary/$archive")
[[ ${actual%% *} == "$expected" ]] || error "Checksum mismatch for $archive"

contents=$(tar -tzf "$temporary/$archive" | sort)
[[ $contents == $'THIRD-PARTY-NOTICES.txt\ncorbado' ]] || error "Unexpected files in $archive"
mkdir -p "$temporary/extracted" "$version_dir" "$bin_dir"
tar -xzf "$temporary/$archive" -C "$temporary/extracted"
[[ -f "$temporary/extracted/corbado" && -f "$temporary/extracted/THIRD-PARTY-NOTICES.txt" ]] || error 'Archive is incomplete'
[[ $("$temporary/extracted/corbado" --version) == "$version" ]] || error 'Executable version does not match the release'

if [[ -e $bin_dir/corbado && ! -L $bin_dir/corbado ]]; then
  error "Refusing to replace an existing file at $bin_dir/corbado"
fi
install -m 755 "$temporary/extracted/corbado" "$version_dir/corbado"
install -m 644 "$temporary/extracted/THIRD-PARTY-NOTICES.txt" "$version_dir/THIRD-PARTY-NOTICES.txt"
ln -sfn "$version_dir/corbado" "$bin_dir/corbado"

printf 'Corbado CLI v%s installed to %s\n' "$version" "$bin_dir/corbado"
if [[ :$PATH: != *:$bin_dir:* ]]; then
  printf 'Add %s to PATH, for example: export PATH="%s:$PATH"\n' "$bin_dir" "$bin_dir"
fi
