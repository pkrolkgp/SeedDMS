# SeedDMS 
Added:
* Using Mysql8
* LDAP Support with openldap test
* Sended mail with mailcatcher

Polish language as main 

## Installation

* Clone the github repsoitory
* If necessary change the ports and volume mounts in `docker-compose.yml`.  
* and then `docker-compose up`
* After complete build execute startup script `docker exec -it SEED /bin/bash /startup.sh`
* after build go to http://localhost:8080/install
* initial user/password: **admin / admin**

## DockerHub
[SeedDMS](https://hub.docker.com/repository/docker/barricadepl/seed_dms_full)