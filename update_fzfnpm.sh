#!/bin/bash

# Script para actualizar fzfnpm.rb con la última versión
# Uso: ./update_fzfnpm.sh

REPO="FrancisVega/fzfnpm"

echo "Obteniendo la última versión de $REPO..."

# Obtener la última versión
LATEST_VERSION=$(curl -s https://api.github.com/repos/$REPO/releases/latest | jq -r '.tag_name')

if [ "$LATEST_VERSION" = "null" ] || [ -z "$LATEST_VERSION" ]; then
    echo "Error: No se pudo obtener la última versión"
    exit 1
fi

echo "Última versión: $LATEST_VERSION"

# Construir la URL
URL="https://github.com/$REPO/archive/refs/tags/$LATEST_VERSION.tar.gz"

echo "Calculando SHA256..."

# Calcular SHA256
SHA256=$(curl -sL "$URL" | shasum -a 256 | cut -d' ' -f1)

if [ -z "$SHA256" ]; then
    echo "Error: No se pudo calcular el SHA256"
    exit 1
fi

echo "SHA256: $SHA256"

echo ""
echo "Datos para actualizar fzfnpm.rb:"
echo "URL: $URL"
echo "SHA256: $SHA256"
echo ""
echo "Comando para actualizar automáticamente:"
echo "sed -i '' 's|url \".*\"|url \"$URL\"|' fzfnpm.rb"
echo "sed -i '' 's|sha256 \".*\"|sha256 \"$SHA256\"|' fzfnpm.rb" 