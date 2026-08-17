#!/usr/bin/env bash
# Gem Installer v2.0.0 - One-command setup
set -e

VERSION="2.0.0"
INSTALL_DIR="$HOME/.local/bin"
CONFIG_DIR="$HOME/.gem"
R='\033[31m' G='\033[32m' Y='\033[33m' C='\033[36m' B='\033[1m' X='\033[0m'

echo -e "\n  ${B}${C}💎 Gem Installer v${VERSION}${X}\n"

OS="$(uname -s | tr '[:upper:]' '[:lower:]')"
ARCH="$(uname -m)"
[ "$ARCH" = "x86_64" ] && ARCH="amd64"
[ "$ARCH" = "aarch64" ] || [ "$ARCH" = "arm64" ] && ARCH="arm64"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
mkdir -p "$INSTALL_DIR" "$CONFIG_DIR" "$CONFIG_DIR/data/models" "$CONFIG_DIR/data/llama.cpp"

GEM_BIN=""
for f in "${SCRIPT_DIR}/binário/gem-${OS}-${ARCH}" "${SCRIPT_DIR}/binário/gem-${OS}-${ARCH}.exe" "${SCRIPT_DIR}/binário/gem-linux-amd64"; do
    [ -f "$f" ] && GEM_BIN="$f" && break
done

if [ -n "$GEM_BIN" ]; then
    cp "$GEM_BIN" "$INSTALL_DIR/gem" && chmod +x "$INSTALL_DIR/gem"
    echo -e "  ${G}✓${X} Binary installed to ${INSTALL_DIR}/gem"
else
    echo -e "  ${Y}No pre-compiled binary for ${OS}-${ARCH}${X}"
    if [ -f "${SCRIPT_DIR}/etc/gem-bash/gem" ]; then
        cp "${SCRIPT_DIR}/etc/gem-bash/gem" "$INSTALL_DIR/gem" && chmod +x "$INSTALL_DIR/gem"
        echo -e "  ${G}✓${X} Bash version installed"
    fi
fi

[ -f "${SCRIPT_DIR}/config/config.toml" ] && cp "${SCRIPT_DIR}/config/config.toml" "$CONFIG_DIR/config.toml"

if ! echo ":$PATH:" | grep -q ":$INSTALL_DIR:"; then
    echo "export PATH=\"${INSTALL_DIR}:\$PATH\"" >> "${HOME}/.bashrc"
    echo -e "  ${G}✓${X} Added to PATH (restart shell)"
fi

echo -e "\n  ${G}✓ Gem installed!${X} Run: ${B}${C}gem chat${X}\n"
