#!/bin/bash

set -eu

task_usage() {
  echo "usage: $0 build"
  exit 1
}

task_build() {
  pandoc -t beamer pairing.md -V theme=Pittsburgh -o slides.pdf
}

cmd="${1:-}"
shift || true
case "$cmd" in
  build) task_build ;;
  *) task_usage ;;
esac
