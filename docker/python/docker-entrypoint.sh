#!/bin/sh

export PYTHONIOENCODING=UTF-8

if [ ! -d "/var/lib/mypc/python_venv" ]
then
    python3 -m venv /var/lib/mypc/python_venv
fi

. /var/lib/mypc/python_venv/bin/activate
python3 -m pip install --no-cache-dir -r /usr/share/webapps/mypc/configs/django/requirements/local.txt
python3 /usr/share/webapps/mypc/manage.py runserver 0.0.0.0:8000
