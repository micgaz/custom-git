#!/bin/bash

sudo groupadd heroes
sudo useradd -m -G heroes hero
sudo passwd hero
