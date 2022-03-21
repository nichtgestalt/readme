.TL
Debian - APT
.AU
nichtgestalt

.NH
Update & Upgrade
.LP
Zuerst werden die Repositories synchronisiert, danach können die entsprechenden Packete auf den neusten Stand gebracht werden:

.ft C
# apt update && apt upgrade
.ft

.NH
Packete entfernen
.LP
Durch folgenden Befehl wird das angegebene Packet deinstalliert

.ft C
# apt remove <pkg-name>
.ft

.LP
Wenn du die hinterlassenen, ungenutzten Abhängigkeiten deinstallieren willst, tippst du folgendes ein:

.ft C
# apt autoremove
.ft

Folgendes Kommando entfernt zusätzlich die durchgeführten Konfigurationen für das entsprechende Programm:

.ft C
# apt purge <pkg-name>
.ft

.NH
Wireless Drivers
.LP
Der benötigte Treiber heißt
.B broadcom-sta-dkms

.NH
Die Sache mit dem Headphone Port
.LP
Sobald Kopfhörer angesteckt sind, hört man aus denen keinen Sound mehr. Dies ist leint behoben, indem du Folgendes in
.B /etc/modprobe.d/alsa-base.conf 
eingibst:

.ft C
options snd-hda-intel model=imac27_122
.ft

