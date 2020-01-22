#!/bin/bash
NAME="Api"
DJANGODIR=/HOME/HANSEL/SERVICE/ISE
#SOCKFILE==/HOME/HANSEL/SERVICE/ISE
USER=HANSEL
GROUP=HANSEL
NUM_WORKERS=3
DJANGO_SETTINGS_MODULE=API
DJANGO_WSGI_MODULE=API

echo "starting $NAME as $(whoami)"

cd $DJANGODIR
 /home/ec2-user/.local/share/virtualenvs/Api01-zgXzyO3B/bin/activate
 export DJANGO_SETTINGS_MODULE=$DJANGO_SETTINGS_MODULE
 export PYTHONPATH=$DJANGODIR:$PYHTONPATH

 #RUNDIR=$(dirname $SCKFILE)

 #test -d $RUNDIR || mkdir -p $RUNDIR

 exec gunicorn ${DJANGO_WSGI_MODULE}: application --name $NAME --workers $NUM_WORKERS --user=$USER --grupo=$GROUP --bind=127.0.0.1:8000 --log-level$
 