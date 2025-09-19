#!/bin/bash
set -e

DBS=("main_db" "simples_web_john_db" "simples_web_vini_db" "simples_web_laiz_db" "simples_web_carlos_db" "simples_web_nicolas_db")
USER="root"
PASS="root_password"

for DB in "${DBS[@]}"; do
  echo "🚀 Migrando $DB ..."
  docker run --rm \
    --network db-env_default \
    -v $(pwd)/sql:/flyway/sql \
    flyway/flyway:latest \
    -url="jdbc:mysql://mysql-server:3306/$DB" \
    -user=$USER \
    -password=$PASS \
    migrate
done
