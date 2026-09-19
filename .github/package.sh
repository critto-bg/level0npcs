#!/usr/bin/env bash
#
# Build the release archives: the mod folder plus one WeiDU binary per
# platform, nothing else.
#
#   .github/package.sh <tag> [out-dir]
#

set -euo pipefail

mod=level0npcs
weidu_tag=v251.00
weidu_version=251

tag=${1:?usage: package.sh <tag> [out-dir]}
out=${2:-dist}
mkdir -p "$out/weidu"
out=$(cd "$out" && pwd)
root=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)
base="https://github.com/WeiDUorg/weidu/releases/download/$weidu_tag"

#
# Copies one member of a WeiDU release zip to a path.
# fetch <zip> <member> <dest>
#
fetch() {
  local zip="$out/weidu/$1"
  [ -f "$zip" ] || curl -fsSL -o "$zip" "$base/$1"
  unzip -p "$zip" "$2" > "$3"
}

#
# Stages the mod folder and the binary, then zips the stage.
# build <platform> <zip> <member> <binary>
#
build() {
  local platform=$1 zip=$2 member=$3 binary=$4
  local stage="$out/stage" archive="$out/$mod-$tag-$platform.zip"

  rm -rf "$stage"
  mkdir -p "$stage"
  git -C "$root" archive HEAD "$mod" | tar -x -C "$stage"
  fetch "$zip" "$member" "$stage/$binary"
  chmod 755 "$stage/$binary"

  if [ "$platform" = macos-arm ]; then
    cat > "$stage/$binary.command" <<'CMD'
command_path=${0%/*}
cd "$command_path"
./setup-level0npcs
CMD
    chmod 755 "$stage/$binary.command"
  fi

  rm -f "$archive"
  (cd "$stage" && zip -qrX "$archive" .)
  rm -rf "$stage"
  echo "$archive"
}

build linux     "WeiDU-Linux-$weidu_version.zip"   WeiDU-Linux/weidu       "setup-$mod"
build win64     "WeiDU-Windows-$weidu_version.zip" WeiDU-Windows/weidu.exe "setup-$mod.exe"
build macos-arm "WeiDU-Mac-ARM-$weidu_version.zip" WeiDU-Mac/weidu         "setup-$mod"
