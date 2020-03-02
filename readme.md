# redmine-postgres

## Init

First, we need to create named volume(named and shared folder between host and postgres container)

run [create-volume.bat](create-volume.bat)

## Run and stop

Before run you can change some variable in .env file. (NOTE! If you already running containers and you wanna change postgres user or password you need re-create volume. It is discharge all data.)

* [run.bat](./run.bat) - for runing redmine and postgres containers (Execute in the same folder where docker-compose.yml placed)
* [stop.bat](stop.bat) - for stopping redmine and postgres containers (Execute in the same folder where docker-compose.yml placed)

## Additional scripts

* [get-data.bat](get-data.bat) - get all postgres data in ./data directory
* [create-volume.bat](create-volume.bat) - create named shared between host and postgres container folder.
* [delete-volume.bat](delete-volume.bat) - delete named shared between host and postgres container folder.

## Additional docker commands

* `docker volume ls` - list of creadet docker columes.
* `docker cp <CONTAINER_NAME>:/<PATH_IN_CONTAINER> <PAHT_ON_THE_HOST>` - copy files(or directory) from container.
