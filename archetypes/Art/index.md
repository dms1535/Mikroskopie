{{- $s := split .Name "-"}}
{{- $Gattung := index $s 0 -}}
{{- $Wort2 := index $s 1 -}}
{{- $Wort3 := index $s 2 -}}
{{- $Untergattung := $Wort2 -}}
{{- $Art := $Wort2 -}}
{{- if ne $Wort3 "" -}}{{ $Art = $Wort3 }}{{ $Untergattung = $Wort2 }}{{ else }}{{ $Art = $Wort2 }}{{ $Untergattung = "" }}{{ end }}
{{ with $Wort3 }}{{ $Art = lower . }}{{ else }}{{ $Art = lower $Wort2 }}{{ end }}
---
title: "{{ $Gattung | title }}{{ with $Wort3 }} ({{ upper (substr $Wort2 0 1) }}. ) {{ lower $Wort3 }}{{ else }} {{ lower $Wort2 }}{{ end }}"
draft: true
date: {{ .Date }}
description: Gastrotrich {{ $Gattung | title }} {{ with $Wort3 }}{{ lower $Wort3 }}{{ else }}{{ lower $Wort2 }}{{ end }}
keywords:
summary: Beschreibung der Gastrotrichen-Art "{{ $Gattung | title }} {{ $Art }}"
type: Art


#Variablen für Template
geekdocCollapseSection: true

#Status: 1 - frisch erzeugt; 2 - mit Steckbrief; 3 - übersetzt
Status: 1
#mit Fotos?
Fotos:

#Variablen für Artbeschreibung
Art: "{{ with $Wort3 }}{{ lower $Wort3 }}{{ else }}{{ lower $Wort2 }}{{ end }}"

#Abmessungen des Gastrotrichen in µm
LaengeMin:
LaengeMax:
BreiteMin:
BreiteMax:
KopfbreiteMin:
KopfbreiteMax:
HalsweiteMin:
HalsweiteMax:
FurkaMin:
FurkaMax:
#in % der Furka
Haftroehrchen:
PharynxMin:
PharynxMax:
Munddurchmesser:

Pharynxform: zylindrisch
Kopfform: fünflappig
Koerperform: flaschenförmig
Mundform: rund
Haftform:
#Anzahl Paare
Setula: 2
SchuppenDorsal: ""
SchuppenVentral: ""
Autor: ""


Oekologie: ""
AehnlicheArten: ""
Besonderheiten: ""

SkizzeImage: Skizze.png
SkizzeNach:

Fundorte:

resources:
  - name: FeaturedImage
    src:
    title:
    params:
      credits:


---
----

## Literatur:

{{< Lit "" >}}