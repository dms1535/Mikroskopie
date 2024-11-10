+++
title = "HowTo"
type = "chapter"
weight = 1
+++

### GIT Operationen

Um mit anderen Bearbeitern bei der Erstellung von Computer-Projekten sicher zusammen zu arbeiten, hat es sich tausendfach bewährt, das Versionkontrollsystem git zu verwenden.

#### Was ist GIT
Git ist ein Versionenkontrollsystem, das es erlaubt, Zwischenstände -  Schnappschüsse - von Dateien zwischen zu speichern, um bei Dateiänderungen problemlos zu vorherigen Versionen zurück zu kehren. 
Um ein Verzeichniss unter git-Kontrolle zu stellen, führt man in diesem Ordner den Befehl

```sh
git init
```

aus. Dadurch werden einige verborgene Dateien erzeugt, in denen die jeweiligen Dateiversionen innerhalb des Ordners zwischenspeichert. Es wird eine Art "Dateiarchiv", ein sog. Repository erstellt. Wenn bereits Dateien in diesem Verzeichnis vorhanden sind, muss man sie in dieses Repository aufnehmen:

```sh
git add .
```
Mit 

```sh
git commit "Dies ist der erste Zwischenstand"
```

kann nun zu jedem Zeitpunkt ein Schnappschuss des Ordners erstellt werden, zu dem man bei Bedarf zurückkehren kann:

```sh
git checkout "Dies ist der erste Zwischenstand"
```

So haben wir lokal auf unserem Rechner ein Repository zur Versionskontrolle erstellt.

{{< mermaid align="center" zoom="true" >}}
gitGraph
       commit id: "Start Steuerklärung"
       commit
       commit id: "V1"
       commit
       commit id: "kreative Sonderausgaben"
       commit
       
{{< /mermaid >}}

Meist ist es vernünftig, eine zweite (Sicherheits-)Kopie des Repositiories auf dem Netz zu haben. Dazu gibt es den Dienst "git-hub", bei dem man sich kostenlos registrieren lassen kann und sein lokales Repositiory speichern kann. Von diesem Netz-Repository erstellt man sich dann eine lokale Kopie ("Pull"), die man bearbeitet und bei Bedarf mit dem lokalen Stand aktualisiert (Push):

{{< mermaid align="center" zoom="true" >}}
gitGraph
    commit id: "Start Steuerklärung"
    branch lokal    
    commit
    commit id: "V1"
    commit
    commit id: "kreative Sonderausgaben"
    commit
    checkout main
    merge lokal
    commit
    commit
    branch lokal2
    commit
    commit
    checkout main
    commit
    merge lokal2
    commit
    branch lokal3
    commit
    checkout main
    commit
    merge lokal3

    
{{< /mermaid >}}
