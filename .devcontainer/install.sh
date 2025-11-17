#!/usr/bin/env bash

set -e

log() {
  echo "[$(date +'%Y-%m-%d %H:%M:%S')] $*"
}

log "Installing uv (Python package manager)"
curl -LsSf https://astral.sh/uv/install.sh | sh
export PATH="$HOME/.cargo/bin:$PATH"

log "Installing additional R packages"
Rscript -e 'pak::pkg_install(c("prompt", "lintr"))'

log "Installing Node packages"
if [ -f "pnpm-lock.yaml" ]; then
  log "Installing Node packages with pnpm"
  pnpm install
  pnpm run prepare
elif [ -f "package-lock.json" ]; then
  log "Installing Node packages with npm ci"
  npm ci
  npm run prepare
fi

log "Python environment setup with uv"
if [ -f "uv.lock" ]; then
  log "Running uv sync"
  uv sync
else
  log "No uv.lock file found, skipping uv sync."
fi

log "R environment setup with renv"
if [ -f "renv.lock" ]; then
  log "Restoring R packages with renv"
  Rscript -e 'renv::restore()'
elif [ -f "pak.lock" ]; then
  log "Installing R packages with pak"
  Rscript -e 'pak::pkg_install()'
else
  log "No R package manager lock file found, skipping R package installation."
fi

log "Setup complete."
