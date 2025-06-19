#!/usr/bin/env bash

set -e

export DEBIAN_FRONTEND=noninteractive

USERNAME=${USERNAME:-${_REMOTE_USER:-"automatic"}}

if [ "$(id -u)" -ne 0 ]; then
  echo -e 'Script must be run as root. Use sudo, su, or add "USER root" to your Dockerfile before running this script.'
  exit 1
fi

# Determine the appropriate non-root user
if [ "${USERNAME}" = "auto" ] || [ "${USERNAME}" = "automatic" ]; then
  USERNAME=""
  POSSIBLE_USERS=("vscode" "node" "codespace" "$(awk -v val=1000 -F ":" '$3==val{print $1}' /etc/passwd)")
  for CURRENT_USER in "${POSSIBLE_USERS[@]}"; do
    if id -u "${CURRENT_USER}" >/dev/null 2>&1; then
      USERNAME=${CURRENT_USER}
      break
    fi
  done
  if [ "${USERNAME}" = "" ]; then
    USERNAME=root
  fi
elif [ "${USERNAME}" = "none" ] || ! id -u "${USERNAME}" >/dev/null 2>&1; then
  USERNAME=root
fi

# Node install
if [ -f "pnpm-lock.yaml" ]; then
  log "Installing Node packages with pnpm"
  pnpm install
  pnpm run prepare
elif [ -f "package-lock.json" ]; then
  log "Installing Node packages with npm ci"
  npm ci
  npm run prepare
fi

log "Final uv sync (project resolution)"
if [ -f "uv.lock" ]; then
  log "Running uv sync"
  su "${USERNAME}" -c "uv sync"
else
  log "No uv.lock file found, skipping uv sync."
fi

log "Installing R packages"
if [ -f "renv.lock" ]; then
  log "Restoring R packages with renv"
  su "${USERNAME}" -c "Rscript -e 'renv::restore()'"
elif [ -f "pak.lock" ]; then
  log "Installing R packages with pak"
  su "${USERNAME}" -c "Rscript -e 'pak::pkg_install()'"
else
  log "No R package manager lock file found, skipping R package installation."
fi

log "Setup complete."
