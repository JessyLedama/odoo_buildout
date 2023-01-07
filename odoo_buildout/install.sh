#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Installs a new empty demo database"
  echo "Usage: ./install [databasename]"
  exit
fi

# Install a new database
# Create a new database with demo data first.
bin/start_odoo -d "$1" --without-demo= --stop-after-init \
-i sale
