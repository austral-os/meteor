#!/bin/bash
set -e

echo "Compilando paquetes Debian..."
dpkg-buildpackage -b -us -uc

echo "Moviendo archivos generados a build-packages/..."
mkdir -p build-packages
mv ../meteor_*.deb build-packages/ 2>/dev/null || true
mv ../meteor-*.deb build-packages/ 2>/dev/null || true
mv ../meteor_*.buildinfo build-packages/ 2>/dev/null || true
mv ../meteor_*.changes build-packages/ 2>/dev/null || true
mv ../libmeteor-*.deb build-packages/ 2>/dev/null || true
mv ../libmeteor-*_*.buildinfo build-packages/ 2>/dev/null || true
mv ../libmeteor-*_*.changes build-packages/ 2>/dev/null || true

echo "¡Listo! Todos los paquetes se encuentran en build-packages/"
