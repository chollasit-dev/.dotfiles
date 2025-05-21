#!/usr/bin/env bash

if command -v go >/dev/null 2>&1; then
  go install github.com/charmbracelet/glow@latest
fi
