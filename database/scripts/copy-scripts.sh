#!/bin/bash
DB_VERSION=10.7.0.0
EM_CONTAINER=dockerintroscope_em_1
#SOURCE=${EM_CONTAINER}:/opt/CA/Introscope/install/database-scripts
#COMMAND="docker cp"

SOURCE=~/work/Introscope10.7.0.45/install/database-scripts/
COMMAND=cp

${COMMAND} ${SOURCE}/add-apm-constraints-postgres-${DB_VERSION}.sql .
${COMMAND} ${SOURCE}/add-apm-indexes-postgres-${DB_VERSION}.sql .
${COMMAND} ${SOURCE}/addconstraints-postgres-${DB_VERSION}.sql .
${COMMAND} ${SOURCE}/addindexes-postgres-${DB_VERSION}.sql .
${COMMAND} ${SOURCE}/addviews-postgres-${DB_VERSION}.sql .
${COMMAND} ${SOURCE}/apm-defaults-postgres-${DB_VERSION}.sql .
${COMMAND} ${SOURCE}/apm-procedures-postgres-${DB_VERSION}.sql .
${COMMAND} ${SOURCE}/create-apm-sequences-postgres-${DB_VERSION}.sql .
${COMMAND} ${SOURCE}/create-apm-tables-postgres-${DB_VERSION}.sql .
${COMMAND} ${SOURCE}/createsequences-postgres-${DB_VERSION}.sql .
${COMMAND} ${SOURCE}/createtables-postgres-${DB_VERSION}.sql .
${COMMAND} ${SOURCE}/dbupdate-apm-sequences-postgres-${DB_VERSION}.sql .
${COMMAND} ${SOURCE}/dbupdate-sequences-postgres-${DB_VERSION}.sql .
${COMMAND} ${SOURCE}/defaults-postgres-${DB_VERSION}.sql .
${COMMAND} ${SOURCE}/drop-apm-tables-postgres-${DB_VERSION}.sql .
${COMMAND} ${SOURCE}/dropconstraints-postgres-${DB_VERSION}.sql .
${COMMAND} ${SOURCE}/dropindexes-postgres-${DB_VERSION}.sql .
${COMMAND} ${SOURCE}/droptables-postgres-${DB_VERSION}.sql .
${COMMAND} ${SOURCE}/dropviews-postgres-${DB_VERSION}.sql .
${COMMAND} ${SOURCE}/initdb-postgres-${DB_VERSION}.sql .
${COMMAND} ${SOURCE}/procedures-postgres-${DB_VERSION}.sql .
