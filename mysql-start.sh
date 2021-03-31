#!/bin/bash

docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=admin -v ~/mysql:/var/lib/mysql -v ~:/home --rm -d mysql
