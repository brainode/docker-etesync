#!/bin/sh
WASSTARTED="WASSTARTED"
if [ ! -e $WASSTARTED ]; then
    touch $WASSTARTED
    echo "from django.contrib.auth.models import User; User.objects.create_superuser('$admin','$email','$pass')" | python manage.py shell
else
    /etesync/server-skeleton/manage.py runserver 0.0.0.0:8008
fi