## Hugo-Webseite zur Dokumentation von gemeinsamen Mikroskopie-Projekten

### Verwendete Open-Source-Bestandteile

- Hugo-Theme **Relearn** https://mcshelby.github.io/hugo-theme-relearn/index.html
- nanogallery2 https://nanogallery2.nanostudio.org/
- Hugo https://gohugo.io/


### Allgemeine Beschreibung

### Zusätzliche Features

#### Zusätzliche Shortcodes

##### {{< Comment >}} 
Auskommentieren eines Teils einer Webseite.
```
{{< Comment >}} Dies wird unsichtbar! {{< /Comment >}}
```
wird zu:

##### {{< Column >}}
Webseite wird in Spalten gesetzt. Der Spaltentrenner ist <--->
Zusätzlich kann das Größenverhältnis der Spalten über den Parameter "ratio=1:2" gesteuert werden.
```hugo
{{< Column ratio="1:2">}}
Erste Spalte
<--->
zweite, doppelt so große Spalte
{{< /Column >}}
```
wird zu:


##### {{< nanogallery >}}
Erstellen einer Nanogallerie. Alle Bilder, die zwischen {{< nanogallery >}} und {{< /nanogallery >}} eingefügt werden, werden in die Gallerie eingefügt.

##### {{< nonoimage >}}
Einfügen von Bildern in eine nanoGallery. Die Bilder müssen im Seitenbranch leigen. Thumbnails der Bilder müssen im Verzeichnis "/thumbs" mit dem selben Namen existieren.

| Parameter | Bedeutung | Beispiel |
|-----------|-----------|----------|
| file      | Name der Bilddatei | {{< nonoimage file="Bild.jpg" >}} |
| thumbs    | Name des Thubs-Dir; default="/thumbs" | {{< nonoimage file="Bild.jpg" thumbs="/sonstwo" >}} |
| title     | Titel des Bildes (auch mit HTML); default="" | {{< nonoimage file="Bild.jpg" title="Besonders schönes Bild" >}} |
| desc      | Beschreibung des Bildes (auch mit HTML); default="" | {{< nonoimage file="Bild.jpg" dec="Aufnahme mit Zeiss Universal" >}} |
| thumbwidth | Breite des thumbnails default="" | {{< nonoimage file="Bild.jpg" thumbwidth="200" >}} |
| thumbheight | Höhe des thumbnails default="" | {{< nonoimage file="Bild.jpg" thumbheight="200" >}} |
| width | Breite des Bildes default="" | {{< nonoimage file="Bild.jpg" thumbwidth="1200" >}} |
| height | Höhe des Bildes default="" | {{< nonoimage file="Bild.jpg" height="800" >}} |

##### {{< openstreetmap >}}
Einfügen einer OpenStreeMap-Karte von einer Geo-Position

Beispiel:
```hugo
{{< openstreetmap mapName="fundorte_69440" scale="14" moreControl="false" tilelayersControl="false" embedControl="false" datalayersControl="false" captionBar="false" searchControl="false" mapWidth="1000px" >}}
```

#### Zusätzliche Taxonomien
- Fundorte
- Beobachter
- Treffen

  



 
