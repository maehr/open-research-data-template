#!/usr/bin/env bash

set -e

export DEBIAN_FRONTEND=noninteractive

USERNAME=${USERNAME:-${_REMOTE_USER:-"automatic"}}

R_DEPS=${RDEPS:-"rmarkdown"}
PYTHON_DEPS=${PYTHONDEPS:-"jupyter,papermill"}
# JULIA_DEPS=${JULIADEPS:-"IJulia"}
VERSION=${VERSION:-"latest"}

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

apt_get_update() {
  if [ "$(find /var/lib/apt/lists/* | wc -l)" = "0" ]; then
    echo "Running apt-get update..."
    apt-get update -y
  fi
}

# Checks if packages are installed and installs them if not
check_packages() {
  if ! dpkg -s "$@" >/dev/null 2>&1; then
    apt_get_update
    apt-get -y install --no-install-recommends "$@"
  fi
}

quarto_r_deps() {
  local deps=$1
  deps=$(echo "${deps}" | sed 's/,/","/g')
  su "${USERNAME}" -c "Rscript -e 'pak::pkg_install(c(\"${deps}\"))'"
}

install_uv() {
  local version=$1
  local url="https://github.com/astral-sh/uv/releases/${version}/download/uv-installer.sh"
  check_packages curl ca-certificates
  curl --proto '=https' --tlsv1.2 -LsSf "${url}" | env UV_INSTALL_DIR="/usr/local/bin" sh
}

enable_autocompletion() {
  echo 'eval "$(uv generate-shell-completion zsh)"' >> /usr/share/zsh/vendor-completions/_uv
}

install_uv ${VERSION}
enable_autocompletion
apt-get clean && rm -rf /var/lib/apt/lists/*

quarto_python_deps() {
  local deps=$1
  deps=$(echo "${deps}" | sed 's/,/ /g')
  uv venv
  uv pip install ${deps}
}

# quarto_julia_deps() {
#   local deps=$1
#   deps=$(echo "${deps}" | sed 's/,/","/g')
#   su "${USERNAME}" -c "~/.juliaup/bin/julia -e 'using Pkg; Pkg.add.([\"${deps}\"])'"
# }

quarto_r_deps ${R_DEPS}
quarto_python_deps ${PYTHON_DEPS}
# quarto_julia_deps ${JULIA_DEPS}
