#!/bin/bash
while inotifywait -r -e modify,create,delete /var/www/daloradius; do
  apachectl graceful
done
