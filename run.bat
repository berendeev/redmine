CALL ./create-redmine-db-volume.bat
CALL ./create-redmine-volume.bat

docker build -t redmine_custom .\image
docker-compose.exe up -d