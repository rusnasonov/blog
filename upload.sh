#!/bin/bash

echo "start uploading"
rsync -av ./public/* root@rusnassonov.ru:~/blog/

echo "complete"
