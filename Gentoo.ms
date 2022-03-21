.TL
Gentoo
.AU
System Administration
.NH
Updating System
.NH 2
"Update repositories:"

.ft C
# emerge --sync
.ft

.NH 2
"Upgrade system:"

.LP
Dies upgradet alle Programme, welche im @world-file gelistet sind, also alle willkürlich zur Installation eingegebenen Anwendungen ohne Dependencies.

.ft C
# emerge -aDuN @world
.ft


.NH
Package Management
.NH 2
Das @world file

.LP
Im @world file werden sämtliche Programme aufgelistet, welche du willkürlich über Portage kompiliert hast. Du findest es unter
.ft C
/var/lib/portage/world
.ft

.NH 2
Entfernen aus dem @world Register

.LP
Programme, welche aus dem @world Register ausgeschlossen werden, erhalten keine Updates und werden beim meisten 
.ft C
--depclean
.ft
mitsamt deren Abhängigkeiten gelöscht. Mit folgendem Kommando wird dies bewerkstelligt:

.ft C
# emerge -a --deselect name-of/programm
.ft

.NH 2
Depclean des Systems

.LP
Nachdem das Programm entfernt wurde wird mit folgendem Befehl eben dieses mit sämtlichen Abhängigkeiten entfernt:

.ft C
# emerge -a --depclean

.TH

.NH 2
Wieder hinzufügen von entfernten Packeten

.LP
Solltest du versehentlich ein Programm aus dem @world File entfernt haben, kannst du es folgendermaßen wieder hinzufügen:

.ft C
# emerge -a --noreplace
.ft

