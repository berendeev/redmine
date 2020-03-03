docker volume create --name=redmine-volume
docker volume create --name=redmine-plugins-volume

docker build -t redmine_custom .\image
docker-compose.exe up -d