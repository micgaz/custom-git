#!/bin/bash

cat /tmp/hero_files/message.txt # READ operation
echo "New message" > /tmp/hero_files/message.txt # WRITE operation
su - hero
whoami
id
