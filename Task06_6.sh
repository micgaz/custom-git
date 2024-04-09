#!/bin/bash

sudo chown hero:heroes hero_files/
ls -la /tmp/hero_files/message.txt
sudo chmod 770 hero_files/
sudo chmod 660 hero_files/message.txt