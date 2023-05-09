#!/bin/bash

# Setze den Pfad zur Datei, die die letzte IP-Adresse speichert
last_ip_file="/usr/local/bin/last_ip.txt"

# Setze den Pfad zur Datei, die die aktuelle IP-Adresse speichert
current_ip_file="/usr/local/bin/current_ip.txt"

# Erstelle die Datei, wenn sie nicht vorhanden ist
if [ ! -f "$last_ip_file" ]; then
    touch "$last_ip_file"
fi

# Speichere die aktuelle IP-Adresse in einer Datei
curl ifconfig.me > "$current_ip_file"
echo "$(</usr/local/bin/current_ip.txt )"

# Setze eine Variable mit der letzten gespeicherten IP-Adresse
last_ip=$(cat "$last_ip_file")

# Vergleiche die aktuelle IP-Adresse mit der letzten gespeicherten IP-Adresse
if [ "$(cat "$current_ip_file")" != "$last_ip" ]; then
    # Speichere die neue IP-Adresse in der Datei und sende eine Telegram-Nachricht
    echo "$(cat "$current_ip_file")" > "$last_ip_file"
    curl -s -X POST https://api.telegram.org/bot<BOT_TOKEN>/sendMessage -d chat_id=<CHAT_ID> -d text="Die IP-Adresse hat sich geändert. Die neue IP-Adresse ist $(cat "$current_ip_file")."
fi
