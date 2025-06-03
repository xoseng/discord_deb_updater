# Discord Updater by Xose

This project provides a simple Bash-based tool to easily update Discord on Debian-based Linux systems.
It consists of two scripts:

* `discord_update.sh`: Downloads and installs the latest official `.deb` version of Discord.
* `discord_update_make_launcher.sh`: Creates a desktop launcher so you can update Discord from your application menu with one click.

The idea is to place everything inside a folder (e.g. `/opt/discord_update`) and automate the update process without needing a package manager or snap.

## 📁 Project structure

```
/opt/discord_update/
├── discord_update.sh
├── discord_update_make_launcher.sh
└── assets/
    └── discord_update.png
```

* `discord_update.sh`: Must be run as root. It downloads and installs the `.deb` package.
* `discord_update_make_launcher.sh`: Can be run as a regular user. It generates a `.desktop` launcher that runs the updater in your terminal.
* `assets/discord_update.png`: Optional icon used in the launcher.

## 🚀 How to use

1. Clone or copy the folder to `/opt/discord_update`:

   ```bash
   sudo cp -r discord_update/ /opt/
   cd /opt/discord_update
   ```
2. Make scripts executable:

   ```bash
   sudo chmod +x discord_update.sh discord_update_make_launcher.sh
   ```
3. Run the launcher creation script:

   ```bash
   ./discord_update_make_launcher.sh
   ```
4. You will now see a launcher in your app menu named **"Actualizar Discord"**.

---

# Discord Updater por Xose

Este proyecto proporciona una herramienta sencilla basada en Bash para actualizar Discord fácilmente en sistemas Linux basados en Debian.
Consta de dos scripts:

* `discord_update.sh`: Descarga e instala la última versión oficial `.deb` de Discord.
* `discord_update_make_launcher.sh`: Crea un lanzador de escritorio para que puedas actualizar Discord desde el menú de aplicaciones con un clic.

La idea es tener todo dentro de una carpeta (por ejemplo, `/opt/discord_update`) y automatizar el proceso de actualización sin depender de Snap ni del gestor de paquetes.

## 📁 Estructura del proyecto

```
/opt/discord_update/
├── discord_update.sh
├── discord_update_make_launcher.sh
└── assets/
    └── discord_update.png
```

* `discord_update.sh`: Debe ejecutarse como root. Descarga e instala el paquete `.deb`.
* `discord_update_make_launcher.sh`: Se puede ejecutar como usuario normal. Genera un lanzador `.desktop` que abre el actualizador en tu terminal.
* `assets/discord_update.png`: Icono opcional que se usa en el lanzador.

## 🚀 Cómo usar

1. Clona o copia la carpeta a `/opt/discord_update`:

   ```bash
   sudo cp -r discord_update/ /opt/
   cd /opt/discord_update
   ```
2. Haz los scripts ejecutables:

   ```bash
   sudo chmod +x discord_update.sh discord_update_make_launcher.sh
   ```
3. Ejecuta el script que crea el lanzador:

   ```bash
   ./discord_update_make_launcher.sh
   ```
4. Ahora verás un lanzador en tu menú de aplicaciones llamado **"Actualizar Discord"**.

