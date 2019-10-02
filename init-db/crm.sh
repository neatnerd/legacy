#!/bin/bash

export PGUSER=postgres

psql <<- SHELL
    CREATE USER docker;
    CREATE DATABASE "crm";
    GRANT ALL PRIVILEGES ON DATABASE "crm" TO docker;
SHELL

psql -d crm < /data/init-crm.sql