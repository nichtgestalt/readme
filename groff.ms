.TL
Groff: Readme
.AU
nichtgestalt
.NH
Konvertieren
.LP
.ft C
groff -ms Input-file.ms -k -T pdf > Output-file.pdf
.ft

.NH
MS - Macros
.LP
.B .TL
Titel
.br
.br
.B .AU
Autor
.br
.br
.B .NH
Titel
.br
.br
.B .LP
Neuer Paragraph
.br
.br
.B .PP
Neuer Paragraph (indended)
.br
.br
.B ".ft C"
Source block (wird mit
.B .ft
wieder beendet)
.br
.br

.NH 2
Zeilenumbrüche
.LP
Das Formatieren der Zeilenumbrüche funktioniert über den
.B .br
Macro.
.br
.br
.ft C
 Das ist Zeile 1.
 .br
 .br
 Das ist Zeile 2!
.ft
.br
.br

Dies ist ein einfacher Zeilenumbruch und wird wie folg dargestellt:
.br
.br
.ft C
 Das ist Zeile 1.
 Das ist Zeile 2!
.ft
