#!/bin/bash
# Author: Xose
# Require root for running the script
# WARNING: Comment with # the last line if you want don't delete this script
# Autor: Xose
# Requiere root para ejecutar el script
# ADVERTENCIA: Comenta con # la última línea si no quieres que se borre el script

# Check if the user is root
# Comprobar si el usuario es root
if [ "$(id -u)" != 0 ]; then
    echo -e "\n"
    clear
    echo "It requires root to run the script."
    echo "Abort, press any key to continue..."
    read -r abort
    clear
    exit 1
fi

# Update package list and install wget
# Actualizar lista de paquetes e instalar wget
echo "Checking required packages..."
apt update -y
apt install wget -y

# Download Discord .deb package
# Descargar el paquete .deb de Discord
echo "Downloading Discord..."
wget -O "./discord_update.deb" "https://discord.com/api/download?platform=linux"

DEB_FILE="./discord_update.deb"

# Check if the file was actually downloaded
# Verificar si el archivo se descargó correctamente
if [ ! -f "$DEB_FILE" ]; then
    echo "Can't get Discord package..."
    echo "Abort, press any key to continue..."
    read -r abort
    exit 1
fi

# Install the downloaded Discord package
# Instalar el paquete de Discord descargado
echo "Installing Discord package..."
dpkg -i "$DEB_FILE"

# If dpkg fails, try to fix broken dependencies
# Si dpkg falla, intentar arreglar dependencias rotas
if [ $? -ne 0 ]; then
    echo "dpkg failed. Trying to fix broken dependencies..."
    echo "dpkg falló. ¡A ver si arreglamos las putas dependencias!"
    apt install -f -y
    dpkg -i "$DEB_FILE"
fi

# Clean up the downloaded file
# Limpiar el archivo descargado
echo "Remove temporary files..."
rm "$DEB_FILE"

# WARNING: Comment with # the last line if you want don't delete this script
# ADVERTENCIA: Comenta con # la última línea si no quieres que se borre este script
# rm -- "$0"
