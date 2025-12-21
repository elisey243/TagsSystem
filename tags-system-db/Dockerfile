FROM postgres:17.7-bookworm

COPY db.dump /docker-entrypoint-initdb.d/dump.dump
COPY restore.sh /docker-entrypoint-initdb.d/02-restore.sh

RUN chmod +x /docker-entrypoint-initdb.d/02-restore.sh && chmod +r /docker-entrypoint-initdb.d/dump.dump
