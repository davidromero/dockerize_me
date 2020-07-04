#!/bin/bash

echo "Setting Up Server Code (VS Code on Browser)"
container_id=$(/usr/local/bin/docker run -d -p 8080:8080 -p 3000:3000 -e PASSWORD='password' -v "$PWD:/home/coder/project" -u "$(id -u):$(id -g)" codercom/code-server:latest)
echo "container id= " "$container_id"

echo "Installing node 14"
/usr/local/bin/docker exec -u root "$container_id" /bin/bash -c "sudo curl -sL https://deb.nodesource.com/setup_14.x | bash -"
/usr/local/bin/docker exec -u root "$container_id" /bin/bash -c "apt-get install -y nodejs"

echo "node version is: "
/usr/local/bin/docker exec -u root "$container_id" /bin/bash -c "node --version"
echo "npm version is: "
/usr/local/bin/docker exec -u root "$container_id" /bin/bash -c "npm --version"
