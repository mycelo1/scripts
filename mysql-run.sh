#!/bin/bash

docker run --name mysql -e MYSQL_ROOT_PASSWORD=admin -v ~/mysql:/var/lib/mysql -v ~:/home --rm -d mysql
