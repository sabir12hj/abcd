#!/bin/bash

# Script to create a backup of the entire project
echo "Creating project backup..."

# Create a timestamp for the backup filename
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="quiz_tournament_backup_${TIMESTAMP}.zip"

# Create a zip archive of the project
zip -r "$BACKUP_FILE" . -x "*node_modules*" "*.git*" "*.zip"

echo "Backup created successfully: $BACKUP_FILE"
echo "You can download this file from the Replit Files panel."
