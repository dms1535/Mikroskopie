#!/bin/bash

# Überprüfen, ob ein Zielverzeichnis übergeben wurde
if [ -z "$1" ]; then
  echo "Bitte ein relatives Zielverzeichnis angeben."
  exit 1
fi

# Zielverzeichnis
TARGET_DIR="$1"

# Funktion zum Erstellen des Verzeichnisses und der index-Datei
create_dir_and_file() {
  local dir="$1"
  local depth="$2"
  local index_file
  
  # Bestimme den Dateinamen basierend auf der Verzeichnisstiefe
  case "$depth" in
    1)
      index_file="hugo new --kind=chapter"
      ;;
    2)
      index_file="hugo new --kind=gattung"
      ;;
    3)
      index_file="hugo new --kind=art"
      ;;
    *)
      # Für Tiefen größer als 3 wird keine Datei erstellt
      return
      ;;
  esac
  
  # Verzeichnis erstellen
  #mkdir -p "$dir"
  
  # Überprüfen, ob im Verzeichnis bereits Dateien vorhanden sind
  if [ -z "$(ls -A "$dir")" ]; then
    # Verzeichnis ist leer, erstelle die index-Datei
    #touch "$dir/$index_file"
    #echo "$index_file $dir/_index.md"
    $("$index_file $dir/_index.md")
  else
    echo "Bereits Dateien vorhanden in: $dir"
  fi
}

# Durchlaufe alle Zwischenverzeichnisse
current_dir="."
depth=0
IFS='/' # Setze den Interner Separator auf '/'
for part in $TARGET_DIR; do
  current_dir="$current_dir/$part"
  depth=$((depth + 1))
# Bestimme den Dateinamen basierend auf der Verzeichnisstiefe
  case "$depth" in
    1)
      befehl="hugo new --kind=chapter "
      ;;
    2)
      befehl="hugo new --kind=gattung"
      ;;
    3)
      befehl="hugo new --kind=art"
      ;;
    *)
      # Für Tiefen größer als 3 wird keine Datei erstellt
      return
      ;;
  esac




  #create_dir_and_file "$current_dir" "$depth"
done
