#!/bin/sh
python manage.py migrate --noinput
exec gunicorn student_compass.wsgi:application --bind 0.0.0.0:8000 --workers 3
