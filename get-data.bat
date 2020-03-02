docker run -it -d --rm --name redmine-data -v redmine-db-volume:/var/lib/postgresql/data ubuntu
docker cp redmine-data:/var/lib/postgresql/data .\data
docker stop redmine-data