#! /bin/bash
echo "changing dir"
cd /root/docker-compose-php
echo $pwd;
echo "docker-composing..."
/usr/local/bin/docker-compose up -d
echo "done!"