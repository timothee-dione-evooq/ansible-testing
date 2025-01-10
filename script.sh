#!/bin/bash

# Fichier contenant les chemins à traiter
INPUT_FILE="files_to_remove.txt"

# Vérifier si le fichier existe
if [[ ! -f "$INPUT_FILE" ]]; then
    echo "Fichier $INPUT_FILE introuvable."
    exit 1
fi

# Lire le fichier ligne par ligne
while IFS=' ' read -r hash path; do
    # Vérifier que le chemin n'est pas vide
    if [[ -n "$path" ]]; then
        # Appliquer la commande avec le chemin
        echo "Exécution de la commande avec --invert-paths pour : $path"
        # Remplacez "votre_commande" par la commande réelle
        git filter-repo --invert-paths --path "$path" --invert-paths --force
    fi
done < "$INPUT_FILE"

