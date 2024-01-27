#!/bin/sh

echo 'Waiting for PostgreSQL...'
while ! nc -z "$POSTGRES_HOST" "$POSTGRES_PORT"; do
    sleep 0.1
done
echo 'PostgreSQL started'

echo 'Running migrations...'
python manage.py makemigrations
python manage.py migrate

echo 'Collecting static files...'
python manage.py collectstatic --no-input

exec "$@"
