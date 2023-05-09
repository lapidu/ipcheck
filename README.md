# ipcheck
IP-Adresse-Änderungsbenachrichtigung

Dieses Skript sucht nach Änderungen der öffentlichen IP-Adresse und sendet eine Benachrichtigung per Telegram, wenn sich die IP-Adresse ändert. Es wurde für Debian entwickelt und verwendet die Befehle  grep, awk, cut und curl.

Verwendung
Bearbeiten Sie das Skript, um Ihre Telegram-Bot-Token und Chat-ID einzufügen.
Geben Sie dem Skript die Ausführungsberechtigung mit dem Befehl chmod +x scriptname.sh.
Führen Sie das Skript aus oder fügen Sie es zu Ihrem Crontab hinzu, um es regelmäßig auszuführen.
Das Skript erstellt eine Datei last_ip.txt, um die zuletzt gespeicherte IP-Adresse zu speichern, und eine Datei current_ip.txt, um die aktuelle IP-Adresse zu speichern. Wenn die aktuelle IP-Adresse von der zuletzt gespeicherten IP-Adresse abweicht, wird eine Telegram-Nachricht gesendet, die die neue IP-Adresse enthält.

Beitrag
Wenn Sie einen Fehler gefunden haben oder einen Verbesserungsvorschlag haben, können Sie gerne ein Issue oder einen Pull Request erstellen. Vielen Dank für Ihre Hilfe!
