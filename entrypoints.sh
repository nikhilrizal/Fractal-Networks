#!/bin/sh

echo "Waiting for postgres... 🔨 🔨 🔨 🔨 🔨 🔨 🔨"

while ! nc -z $POSTGRES_HOST $POSTGRES_PORT; do
    sleep 0.1
done


echo "PostgreSQL  👉👈 👉👈 👉👈started "

echo 'Running migrations...'
python3 manage.py migrate

echo 'collectstatic migrations...'
python3 manage.py collectstatic



@exec "$@"