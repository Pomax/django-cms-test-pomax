#!/usr/bin/env bash

# Make Django migrations, just in case...
python testsite/manage.py makemigrations

# Then migrate up.
python testsite/manage.py migrate

# Finally, start up the system
python testsite/manage.py runserver "0.0.0.0:$PORT"
