#!/bin/bash

echo "start uploading"
rsync -av ./public/* root@rusnassonov.ru:/var/www/rusnassonov.ru/

echo "complete"
