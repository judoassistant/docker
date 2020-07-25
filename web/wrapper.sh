#!/bin/bash

/usr/bin/judoassistant-web --workers $THREAD_COUNT --postgres "host=$POSTGRES_HOST user=$POSTGRES_USER password=$POSTGRES_PASSWORD dbname=$POSTGRES_DB" "$@"

