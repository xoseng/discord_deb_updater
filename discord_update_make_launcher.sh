#!/bin/bash
# Author: Xose
# Creates a .desktop launcher to run discord_update.sh in the user's default terminal
# Crea un lanzador .desktop para ejecutar discord_update.sh en el terminal predeterminado

DESKTOP_FILE="$HOME/.local/share/applications/discord_update.desktop"
SCRIPT_PATH="$(realpath "$(dirname "$0")/discord_update.sh")"
ICON_PATH="$(realpath "$(dirname "$0")/assets/discord_update.png")"

echo "Creating launcher..."

cat > "$DESKTOP_FILE" <<EOF
[Desktop Entry]
Name=Actualizar Discord
Comment=Actualiza Discord a la última versión desde script
Exec=sh -c 'bash "$SCRIPT_PATH"; echo; read -p "Pulsa Enter para cerrar..."'
Icon=${ICON_PATH:-utilities-terminal}
Terminal=true
Type=Application
Categories=Utility;
EOF

chmod +x "$DESKTOP_FILE"

echo "Launcher created: $DESKTOP_FILE"
