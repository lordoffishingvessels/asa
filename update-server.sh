#!/bin/bash

cd /home/lord/asa || exit 1

sudo docker compose down
sudo rm -f /home/lord/ark-data-island/server/steamapps/appmanifest_2430930.acf
sudo rm -f /home/lord/ark-data-ragnarok/server/steamapps/appmanifest_2430930.acf
sudo rm -f /home/lord/ark-data-extinction/server/steamapps/appmanifest_2430930.acf
sudo docker compose up -d --force-recreate
sudo docker compose logs -f
