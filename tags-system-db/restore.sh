#!/bin/bash
#set -e

echo "Restoring dump..."
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
	CREATE DATABASE $DB_DATABASE;
EOSQL
pg_restore --clean --if-exists \
  -U "$POSTGRES_USER" \
  -d "$DB_DATABASE" \
  /docker-entrypoint-initdb.d/dump.dump

